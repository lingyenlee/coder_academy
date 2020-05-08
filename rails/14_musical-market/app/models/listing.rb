class Listing < ApplicationRecord
  # specify relationship
  belongs_to :user

  # specify validation for required fields
  validates :title, :description, :price, presence: true

  # listing will have one picture
  has_one_attached :picture
end

