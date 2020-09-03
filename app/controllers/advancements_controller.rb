class AdvancementsController < ApplicationController
  def new 
    @character = Character.find(params[:character])
    @params = params
    @advancement = Advancement.new
    @skills = Skill.all
  end

  def create 
    @character = Character.find(params[:advancement][:character_id])
    skill_name = params[:advancement][:name].downcase
    @skill = Skill.find_or_create_by(name: skill_name)

    @advancement = @character.advancements.new
    @advancement.character = @character
    @advancement.skill = @skill 
    puts @advancement.character.name
    @advancement.save!
    flash.notice = "#{@skill.name} skill added." 
    puts @advancement.attributes
    redirect_to character_path(@character)
  end

  def pass 
    @advancement = Advancement.find(params[:advancement_id])
    puts "advancement id: #{@advancement.id}"
    @advancement.passes += 1 
    advance_skill
    @advancement.save 
    redirect_to character_path(@advancement.character)
  end

  def fail 
    @advancement = Advancement.find(params[:advancement_id])
    puts @advancement.attributes
    @advancement.fails += 1 
    advance_skill
    @advancement.save 
    redirect_to character_path(@advancement.character)
  end

  def destroy 
    @advancement = Advancement.find(params[:id])
    @advancement.destroy 
    flash.notice = "#{@advancement.skill.name} skill removed."

    redirect_to character_path(@advancement.character)
  end



  def advance_skill
    nature = @advancement.character.nature
    tries = @advancement.fails + @advancement.passes 
    
    if @advancement.level == 0
      if tries >= nature 
        @advancement.passes = 0 
        @advancement.fails  = 0
        @advancement.level  = 2
        @advancement.save 
        flash.notice = "#{@advancement.skill.name} levelled up!"
      end
      elsif @advancement.passes >= @advancement.level && @advancement.fails >= @advancement.level-1 
      @advancement.passes = 0 
      @advancement.fails  = 0
      @advancement.level += 1
      @advancement.save 
      flash.notice = "#{@advancement.skill.name} levelled up!"
    end

  end

end
