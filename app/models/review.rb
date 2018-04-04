class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: true
  validates :content, presence: true, length: { minimum: 5 }
  validates :restaurant_id, presence: true
end
