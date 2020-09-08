class CharactersController < ApplicationController
  include CharactersHelper
  def index 

    if user_signed_in?
      @user  = current_user
      @user_characters = @user.characters
    end
    user_id = @user ? @user.id : -1
    @other_characters = Character.where("user_id <> #{user_id} AND private = false")

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
    @character.mentor_profession  = params[:mentor_profession]
    @character.parent_profession  = params[:parent_profession]
    @character.artisan_profession = params[:artisan_profession] 
    @character.health    = @character.rank.rank_health
    @character.will      = @character.rank.rank_will
    @character.circles   = @character.rank.rank_circles
    @character.resources = @character.rank.rank_resources
    @character.nature = 3
    @character.save
     

    starting_skills = {}    
  
    #skills from rank

    rank_skills = {
      "Tenderpaw"     =>["pathfinder","scout","laborer"],
      "Guardmouse"    =>["fighter","haggler","scout","pathfinder","survivalist"],
      "Patrol Guard"  =>["cook","fighter","hunter","scout","healer","pathfinder","survivalist","weather watcher"],
      "Patrol Leader" =>["fighter","hunter","instructor","loremouse","persuader","pathfinder","scout","survivalist","weather watcher"],
      "Guard Captain" =>["administrator","fighter","healer","hunter","instructor","militarist","orator","pathfinder","scout","survivalist","weather watcher"]
    }
    
    rank_skills[@character.rank.name].each do |skill| 
      puts "learning #{skill}"
      starting_skills[skill] = 1 if starting_skills[skill].nil?  
      starting_skills[skill] += 1
    end


    #skills from relations
    parent_skill    =  Skill.find_by(name: @character.parent_profession.downcase)
    artisan_skill   =  Skill.find_by(name: @character.artisan_profession.downcase)
    mentor_skill    = Skill.find_by(name: @character.mentor_profession.downcase)



    [parent_skill,artisan_skill,mentor_skill].each do |skill| 
      puts "learning #{skill.name}"
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
    puts params
    @character = Character.find(params[:id])
    @character.update(character_params)
    @character.mentor_profession  = params[:mentor_profession].nil?  ? @character.mentor_profession  : params[:mentor_profession] 
    @character.parent_profession  = params[:parent_profession].nil?  ? @character.parent_profession  : params[:parent_profession] 
    @character.artisan_profession = params[:artisan_profession].nil? ? @character.artisan_profession : params[:artisan_profession]
    @character.city = params[:city].nil? ? @character.city : City.find(params[:city]) 
    @character.rank = params[:rank].nil? ? @character.rank : Rank.find(params[:rank]) 
    @character.save

    
    flash.notice = "Character '#{@character.name}' Updated." 

    if params[:rank].nil?
      puts "rendering"
      render :show
    else
      puts "redirecting"
      redirect_to character_path(@character)
    end
  end


  artisan_professions = [
    ["Apiarist","Apiarist"],
    ["Archivist","Archivist"],
    ["Armorer","Armorer"],
    ["Baker","Baker"],
    ["Brewer","Brewer"],
    ["Carpenter","Carpenter"],
    ["Cartographer","Cartographer"],
    ["Glazier","Glazier"],
    ["Harvester","Harvester"],
    ["Insectrist","Insectrist"],
    ["Miller","Miller"],
    ["Potter","Potter"],
    ["Smith","Smith"],
    ["Stonemason","Stonemason"],
    ["Weaver","Weaver"] 
  ]

  mentor_professions = [
    ["Fighter","Fighter"],
    ["Healer","Healer"],
    ["Hunter","Hunter"],
    ["Instructor","Instructor"],
    ["Pathfinder","Pathfinder"],
    ["Scout","Scout"],
    ["Survivalist","Survivalist"],
    ["Weather Watcher","Weather Watcher"],
  ]


end
