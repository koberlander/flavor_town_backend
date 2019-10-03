class OrderSerializer < ActiveModel::Serializer
  has_many :flavors

  attributes :id ,:name, :address
end
