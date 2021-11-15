class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true, inclusion: 0..5, numericality: { only_integer: true }
  validates :content, presence: true
end
