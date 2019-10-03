class FlavorOrder < ApplicationRecord
  belongs_to :flavor
  belongs_to :order
end
