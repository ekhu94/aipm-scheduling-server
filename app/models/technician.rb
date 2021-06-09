class Technician < ApplicationRecord
  has_many :work_orders, dependent: :destroy
  has_many :locations, through: :work_orders
  validates :name, presence: true
end
