class Food < ApplicationRecord
  belongs_to :user, class_name: 'User'

  validates :name, presence: true
  validates :measurement_unit, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
