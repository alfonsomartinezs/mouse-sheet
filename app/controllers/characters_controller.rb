class CharactersController < ApplicationController
  include CharactersHelper
  def index 

    if user_signed_in?
      @user  = current_user
      @user_characters = @user.characters
    end
    @other_characters = Character.where.not(user: @user)

  end
  def new
    @character = Character.new
  end

  def show
    @character = Character.find(params[:id])
    puts "Got into character show"
  end

  def create 
    @character = current_user.characters.new(character_params)
    @character.city = City.find(params[:city])
    @character.rank = Rank.find(params[:rank])
    @character.mentor_profession  = params[:mentor_profession]
    @character.parent_profession  = params[:parent_profession]
    @character.artisan_profession = params[:artisan_profession] 
    @character.health    = @character.rank.rank_health
    @character.will      = @character.rank.rank_will
    @character.circles   = @character.rank.rank_circles
    @character.resources = @character.rank.rank_resources
    @character.nature = 3
    @character.save
     

    

    parent_skill    =  Skill.find_by(name: @character.parent_profession.downcase)
    artisan_skill   =  Skill.find_by(name: @character.artisan_profession.downcase)
    mentor_skill    = Skill.find_by(name: @character.mentor_profession.downcase)

    starting_skills = {}

    [parent_skill,artisan_skill,mentor_skill].each do |skill| 
      starting_skills[skill.name] = 2 if starting_skills[skill.name].nil?  
      starting_skills[skill.name] += 1
    end

    starting_skills.each do |skill,rank|
      advancement = @character.advancements.new 
      advancement.skill = Skill.find_by(name: skill)
      advancement.level = rank
      advancement.save
    end

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

  def gain_fate
    @character = Character.find(params[:character_id])
    puts @character.name
    @character.fate += 1
    @character.save
    redirect_to character_path(@character)
  end

  def lose_fate
    @character = Character.find(params[:character_id])
    @character.fate -= 1
    @character.save
    redirect_to character_path(@character)
  end

  def gain_persona
    @character = Character.find(params[:character_id])
    puts @character.name
    @character.persona += 1
    @character.save
    redirect_to character_path(@character)
  end

  def lose_persona
    @character = Character.find(params[:character_id])
    @character.persona -= 1
    @character.save
    redirect_to character_path(@character)
  end


  def update
    @character = Character.find(params[:id])
    @character.update(character_params)
    @character.mentor_profession  = params[:mentor_profession]
    @character.parent_profession  = params[:parent_profession]
    @character.artisan_profession = params[:artisan_profession] 
    @character.city = City.find(params[:city])
    @character.rank = Rank.find(params[:rank])
    @character.save

    flash.notice = "Character '#{@character.name}' Updated." 
    redirect_to character_path(@character)
  end



end
