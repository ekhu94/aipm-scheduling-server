class WorkOrder < ApplicationRecord
  belongs_to :technician
  belongs_to :location
  validates :time, presence: true
  validates :duration, numericality: { greater_than: 0,  only_integer: true }
  validates :price, numericality: { greater_than: 0,  only_integer: true }
end
