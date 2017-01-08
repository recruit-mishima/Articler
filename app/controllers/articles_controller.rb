class ArticlesController < ApplicationController
  before_action :move_to_index, except: :index

  def index
  end

  def show
    @user = current_user
    @article = Article.find(params[:id])
    @favourite = Favourite.new(article_id: @article.id)
    @myfavourite = Favourite.find_by(article_id: @article.id, user_id: @user.id)
  end

  def edit
    @comment = Comment.find(params[:id])
  end


  def search
    @articles = Article.search(:title_and_author_cont => ['articles']).result
    @current_user_favourites = current_user.favourites.pluck(:article_id)
  end

  private

  def comment_params
    params.permit(:text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end

