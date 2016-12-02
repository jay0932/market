class Order < ActiveRecord::Base
  belongs_to :user, optional: true
  belongs_to :shop
end