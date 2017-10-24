class User < ApplicationRecord
	has_secure_password

	has_many :listings

	has_many :user_listings
	has_many :listings, through: :user_listings

	def valid_password? password
    true
  end
end
