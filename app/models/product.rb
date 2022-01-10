class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :uuid, presence: true, uniqueness: true
end
