class CharacterMembershipsController < ApplicationController
  def create
    group_id = params[:character_membership][:group_id]
    character_id = params[:character_membership][:character]
    @character_membership = CharacterMembership.new 
    @character_membership.group_id = group_id
    @character_membership.character_id =  character_id
    @character_membership.save
    redirect_to group_path(group_id) 
  end

  def destroy 
    @membership = CharacterMembership.find(params[:id]) 
    @membership.destroy 

    redirect_to group_path(@membership.group_id)
  end
end
