class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :work_orders
  has_many :work_orders
  has_many :technicians, through: :work_orders
end
