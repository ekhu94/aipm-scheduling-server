class WorkOrderSerializer < ActiveModel::Serializer
  attributes :id, :time, :duration, :price, :technician, :location
  belongs_to :location
  belongs_to :technician
end
