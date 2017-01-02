class UsersController < ApplicationController
  def show
      @username = current_user.username
      @articles = Article.where(user_id: current_user.id).order("date DESC")
    end
end
