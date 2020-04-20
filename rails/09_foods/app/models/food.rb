class Food < ApplicationRecord

    scope :sorted, lambda {order(:id => :asc)}
end
