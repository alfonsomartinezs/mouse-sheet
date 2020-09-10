class GroupsController < ApplicationController
  before_action :authenticate_user!
  def index
    @groups = current_user.groups
    @group = Group.new


  end

  def create 
    @group      = current_user.created_groups.new
    @group.name =  params[:group][:name]
    @group.save
    
    @membership = UserMembership.new 
    @membership.member_id = current_user.id
    @membership.group_id = @group.id
    @membership.approved = true
    @membership.save

    redirect_to groups_path
  end

  def show 
    @group = Group.find(params[:id])
    @memberships = @group.user_memberships
    ##switch to this one when users can approve memberships
    # @memberships = @group.user_memberships.where(approved: true)
    @members = @memberships.map {|m| m.member_id}.join(",")
    puts @members
    @users = User.where("id NOT IN (#{@members})").collect {|u| [u.email, u.id]}
    @membership = UserMembership.new
  end
end
