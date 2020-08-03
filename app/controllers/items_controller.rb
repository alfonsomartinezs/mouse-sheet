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
      @item.save!

      redirect_to character_path(@character)
    end

  def destroy
    @item = Item.find(params[:id])
    @character = @item.character
    @item.destroy
    redirect_to character_path(@character)
  end
end
