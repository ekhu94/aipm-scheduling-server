class TechnicianSerializer < ActiveModel::Serializer
  attributes :id, :name, :work_orders
  has_many :work_orders
  has_many :locations, through: :work_orders
end
