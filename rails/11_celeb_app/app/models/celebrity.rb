class Celebrity < ApplicationRecord

    has_one :address, dependent: :destroy
end
