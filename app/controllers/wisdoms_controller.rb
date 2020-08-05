class WisdomsController < ApplicationController
  def new 
    @character = Character.find(params[:character])
    @wisdom = Wisdom.new
    @wises = Wise.all
  end

  def create 
    #get character for wisdom
    @character = Character.find(params[:wisdom][:character_id])
    puts "trying here>>"
    #get or create wise for wisdom
    wise_name = (params[:wisdom][:name]).downcase
    puts wise_name
    @wise = Wise.find_or_create_by(name: wise_name)
    puts "creating wisdom>>"
    #create wisdom
    @wisdom = @character.wisdoms.new
    @wisdom.wise = @wise
    @wisdom.save! 


    flash.notice = "#{@wise.name} wise added."
    redirect_to character_path(@character)

  end

  def destroy
    @wisdom = Wisdom.find(params[:id])
    @wisdom.destroy 
    flash.notice = "#{@wisdom.wise.name} wise removed."

    redirect_to character_path(@wisdom.character)
  end

end