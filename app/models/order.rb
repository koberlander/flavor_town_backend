class Order < ApplicationRecord
  belongs_to :customer

  has_many :flavor_orders

  has_many :flavors, through: :flavor_orders

  def flavor_ids=(flavor_ids)
    flavor_ids.each{ | flavor_id | FlavorOrder.find_or_create_by(flavor_id: flavor_id, order: self )}
  end
end
