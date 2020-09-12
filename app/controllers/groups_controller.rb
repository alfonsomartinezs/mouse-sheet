class GroupsController < ApplicationController
  before_action :authenticate_user!
  def index
    @memberships = current_user.user_memberships.where(approved: true)
    @group = Group.new
    @pending_memberships = current_user.user_memberships.where(approved: false)

  end

  def create 
    @group      = current_user.created_groups.new
    @group.name =  params[:group][:name]
    @group.save
    
    @membership = UserMembership.new 
    @membership.member_id = current_user.id
    @membership.group_id = @group.id
    @membership.admin = true
    @membership.approved = true
    @membership.save

    redirect_to groups_path
  end

  def show 
    @group = Group.find(params[:id])
    @memberships = @group.user_memberships.where(approved: true)
    @memberships_all = @group.user_memberships
    @members = @memberships_all.map {|m| m.member_id}.join(",")
    puts @members
    @users = User.where("id NOT IN (#{@members})").collect {|u| [u.email, u.id]}
    @current_membership = UserMembership.where("group_id = '#{@group.id}' AND member_id = '#{current_user.id}'").first
    @membership = UserMembership.new
    @character_membership = CharacterMembership.new

    @characters = @group.characters
    character_ids = @characters.map{|c| c.id}.join(",")
    if @characters.count > 0
      @user_characters = current_user.characters.where("id NOT IN (#{character_ids})").collect {|c| [c.name, c.id]}
    else
      @user_characters = current_user.characters.collect {|c| [c.name, c.id]}
    end

  end

  def destroy 
    @group = Group.find(params[:id])
    @group.destroy 

    flash.alert = "Group Destroyed"
    redirect_to groups_path
  end

end
