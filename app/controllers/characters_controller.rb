class CharactersController < ApplicationController
  include CharactersHelper
  before_action :authenticate_user!
  def index 
    @user = current_user
    @characters = @user.characters
  end
  def new
    @character = Character.new
  end

  def show
    @character = Character.find(params[:id])
  end

  def create 
    @character = current_user.characters.new(character_params)
    @character.city = City.find(params[:city])
    @character.rank = Rank.find(params[:rank])
    puts params[:rank]
    @character.save!
    flash.notice = "Character '#{@character.name}' Created!" 

    redirect_to characters_path
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    flash.notice = "Character '#{@character.name}' Deleted." 
    redirect_to characters_path
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    @character.update(character_params)

    flash.notice = "Character '#{@character.name}' Updated." 
    redirect_to character_path(@character)
  end

end
