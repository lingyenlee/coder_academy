class User < ApplicationRecord
    # helper method to take the raw password and encrypt it
    has_secure_password

    def to_token_payload
        {
            sub: id,
            email: email
        }
    end
end
