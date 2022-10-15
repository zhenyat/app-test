class Sample < ApplicationRecord
  validates :name,   presence: true, uniqueness: true
  validates :title,  presence: true
  validates :price,    presence: true, numericality: {greater_than_or_equal_to: 0.0}
  validates :quantity, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
end
