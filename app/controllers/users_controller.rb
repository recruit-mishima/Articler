class UsersController < ApplicationController
  def show
      @favourites = current_user.favourites.includes(:article).page(params[:page]).per(10)
      # binding.pry
  end
end
