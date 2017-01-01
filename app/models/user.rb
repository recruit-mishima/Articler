class User < ActiveRecord::Base
  has_many :favourites
  has_many :articles, :through => :favourites
end
