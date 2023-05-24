class Restaurant < ApplicationRecord
  validates :name, :address, presence: true
  validates :category, inclusion: %w[chinese italian japanese french belgian], presence: true

  has_many :reviews, dependent: :destroy
end
