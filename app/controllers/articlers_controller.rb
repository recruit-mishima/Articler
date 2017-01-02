class ArticlersController < ApplicationController
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


end
