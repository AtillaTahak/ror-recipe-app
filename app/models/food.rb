class Food < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  validates :name, presence: true
  validates :measurement_unit, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
