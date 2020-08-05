class AdvancementsController < ApplicationController
  def new 
    @character = Character.find(params[:character])
    puts @character.name
    @params = params
    @advancement = Advancement.new
    @skills = Skill.all
  end

  def create 
    puts "creating"
    @character = Character.find(params[:advancement][:character_id])
    skill_name = params[:advancement][:name]
    @skill = Skill.find_or_create_by(name: skill_name)

    @advancement = @character.advancements.new
    @advancement.character = @character
    @advancement.skill = @skill 
    puts "saving advancement.."
    puts @advancement.character.name
    @advancement.save!
    puts "saved"
    puts @advancement.attributes
    redirect_to character_path(@character)

  end

end
