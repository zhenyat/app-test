class Newsbite < ApplicationRecord
  validates :title, presence: true, uniqueness: true
end
