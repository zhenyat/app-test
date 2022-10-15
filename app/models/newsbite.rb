class Newsbite < ApplicationRecord
  validates :title,   presence: true, uniqueness: true
  validates :content, presence: true

  def published?
    !published_at.nil?
  end
end
