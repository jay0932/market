class Shop < ActiveRecord::Base
  belongs_to :user
  has_one :order
end