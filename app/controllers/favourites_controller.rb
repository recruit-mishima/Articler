  class FavouritesController < ApplicationController

  def create
    article_id = params[:article_id]
    Favourite.create(favourite_params)
    redirect_to search_articles_path(keywords: session[:keywords], start_year: session[:start_year], end_year: session[:end_year])
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy if @favourite.user_id == current_user.id
    redirect_to user_path(id: current_user.id)
  end

  def update
    @favourite = Favourite.find(params[:id])
    @favourite.comment = params[:favourite][:comment]
    @favourite.save if @favourite.user_id == current_user.id
    redirect_to user_path(id: current_user.id)
  end

  private
    def favourite_params
      params.require(:favourite).permit(:comment).merge(user_id: current_user.id, article_id: params[:article_id])
    end
end
