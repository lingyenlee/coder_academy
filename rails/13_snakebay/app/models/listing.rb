class Listing < ApplicationRecord
  # link to breed model -> has a listing_id as FK
  belongs_to :breed

  # link to user model --> has a user_id as FK
  belongs_to :user

  enum sex: { female: 0, male: 1 }
  validates :sex, presence: true
  has_one_attached :picture
  scope :sorted, lambda {order(:id => :asc)}
end
