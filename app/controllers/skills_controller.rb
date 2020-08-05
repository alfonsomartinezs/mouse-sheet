class SkillsController < ApplicationController
  def index 
    @skills = Skill.all
  end
  def destroy
    puts params
    @character = Character.find(params[:character_id])
    @skill = Skill.find(params[:id])
    @skill.destroy
    flash.notice = "#{@skill.name} skill removed." 

    redirect_to character_path(@character)
  end
end
