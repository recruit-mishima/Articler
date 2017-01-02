class Article < ActiveRecord::Base
  has_many :comments
  has_many :users, :through => :favourites
end
