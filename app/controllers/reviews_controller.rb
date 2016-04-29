class ReviewsController < ApplicationController
  before_filter :set_game

  def index
    @reviews = @game.reviews

    respond_to do |format|
      format.html
      format.json { render json: { game: @game, reviews: @reviews } }
    end
  end

  def show
    @review = @game.reviews.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: { game: @game, review: @review } }
    end
  end

  def set_game
    @game = Game.find(params[:game_id])
  end
end
