class Toy < ApplicationRecord
    belongs_to :user
    belongs_to :manufacturer
    has_many :toys_categories
    has_many :categories, through: :toys_categories
    has_many :images, as: :imageable
end
