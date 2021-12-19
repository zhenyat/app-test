class Piece < ApplicationRecord
  validates :title, presence: true
  validates :slug, presence: true
end
