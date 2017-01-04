class UsersController < ApplicationController
  def show
      @favourites = current_user.favourites.includes(:article)
      # binding.pry
  end
end
