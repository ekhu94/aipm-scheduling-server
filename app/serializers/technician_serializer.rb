class TechnicianSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :work_orders
  has_many :locations, through: :work_orders
end
