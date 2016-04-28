class GamesController < ApplicationController
  before_filter :set_category

  def index
    @games = @category.games

    respond_to do |format|
      format.html
      format.json { render json: { category: @category, games: @games } }
    end
  end

  def show
    @game = @category.games.find(params[:id])
  end

  # def create
  #   @game = Game.new(game_params)
  #   @game.category = @category_id
  #   if @gmae.save
  #     redirect_to category_game_path ...
  #   else
  #     render new
  #   end
  #
  # end

  def set_category
    @category = Category.find(params[:category_id])
  end
end
