class Article < ActiveRecord::Base
  has_many :favourites
  has_many :keywords
  has_many :users, through: :favourites
  # belongs_to :user, :through => :favourites


end
