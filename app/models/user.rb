class User < ApplicationRecord
	has_secure_password

	# has_many :listings

	has_many :user_listings
	has_many :listings, through: :user_listings

  mount_uploader :image, ImageUploader

	def valid_password? password
    true
  end
end
