class Movie < ApplicationRecord

    scope :sorted, lambda{order(:id => :asc)}

end