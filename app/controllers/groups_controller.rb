class GroupsController < ApplicationController
  def index
    # @groups = current_user.created_groups
    @groups = current_user.created_groups
    @group = Group.new
  end

  def create 
    @group      = current_user.created_groups.new
    @group.name =  params[:group][:name]
    @group.save
    redirect_to groups_path
  end

  def show 
    @group = Group.find(params[:id])
  end
end
