class Item < ApplicationRecord
  belongs_to :category

  validates :description, :price, :title, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end