class ArticlersController < ApplicationController
  before_action :move_to_top, except: :top
  def top
  end
  def search
    # @articles = Article.find_by_sql(["select * from articles where title like ?", keyword])
    @articles = Article.where('title LIKE(?)', "%#{params[:title]}%")
    render :index
    # @articles = Article.find params[:id]
  end
  def index
   # @articles = Article.find_by_sql(["select * from articles where title like ?", params[:title]])
   @articles = Article.where('title LIKE(?)', "%#{params[:title]}%").order("date DESC")
  end
  def show
    # binding.pry
    @article = Article.find(params[:id])
  end

  # def create 
  #   Comment.user(comment_params[:text], user_id: current_user.id)
  # end

  # def show
  #   @favourites = Favourite.find(params[:id])
  # end

  private
    def comment_params
      params.permit(:text)
    end

  def move_to_top
      redirect_to action: :top unless user_signed_in?
  end



end
