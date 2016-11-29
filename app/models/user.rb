class User < ActiveRecord::Base
  has_many :shops
  has_many :comments
  has_many :orders
end