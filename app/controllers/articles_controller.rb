class ArticlesController < ApplicationController
  before_action :move_to_index, except: [:index, :search]
  before_action :authenticate_user!, only: :search

  def index
  end

  def show
    @user = current_user
    @article = Article.find(params[:id])
    @favourite = Favourite.new(article_id: @article.id)
    @myfavourite = Favourite.find_by(article_id: @article.id, user_id: @user.id)
    @keyword = Keyword.find_by(article_id: params[:id])
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def search
    @articles = Article.search(:title_or_author_cont_any => params[:keywords]).result
    @articles = @articles.where(date: params[:start_year]..params[:end_year]).page(params[:page]).per(10)
    @current_user_favourites = current_user.favourites.pluck(:article_id)
    session[:keywords] = params[:keywords]
    session[:start_year] = params[:start_year]
    session[:end_year] = params[:end_year]
  end

  private
  def comment_params
    params.permit(:text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end

