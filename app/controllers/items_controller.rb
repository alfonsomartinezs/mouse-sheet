class ItemsController < ApplicationController
  def new
    @character = Character.find(params[:character])
    puts @character
    @item = @character.items.new
  end

  def create
    puts params
      @character = Character.find(params[:item][:character_id])
      @item = @character.items.new
      @item.name = params[:item][:name]
      @item.description = params[:item][:description]
      flash.notice = "#{@item.name} item created." 
      @item.save!

      redirect_to character_path(@character)
    end

  def destroy
    @item = Item.find(params[:id])
    @character = @item.character
    @item.destroy
    flash.notice = "#{@item.name} item deleted." 
    redirect_to character_path(@character)
  end
end
