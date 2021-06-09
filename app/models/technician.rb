class Technician < ApplicationRecord
  has_many :work_orders
  has_many :locations, through: :work_orders
  validates :name, presence: true
end
