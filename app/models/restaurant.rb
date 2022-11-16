class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  categories = %w[chinese italian japanese french belgian]
  validates :name, :address, presence: true
  validates :category, inclusion: { in: categories }
end
