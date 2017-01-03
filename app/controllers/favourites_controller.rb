class FavouritesController < ApplicationController

  def create
    article_id = params[:article_id]
    user_favourites = current_user.favourites
    binding.pry
    Favourite.create(user_id: current_user.id, article_id: params[:article_id], comment: params[:comment])

    redirect_to controller: :articles, action: :show
  end


  # def show
  #   @favourites = Favourite.find(params[:id])
  # end

end
