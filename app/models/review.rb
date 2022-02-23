class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5, only_integer: true }
  validates :content, presence: true
end
