class Flavor < ApplicationRecord
  has_many :flavor_orders
  has_many :orders, through: :flavor_orders
end
