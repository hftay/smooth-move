class Listing < ApplicationRecord
	has_many :user_listings

	has_many :users, through: :user_listings

	has_many :listing_tags
	has_many :tags, through: :listing_tags

	belongs_to :creator, class_name: "User", foreign_key: "creator_id"

  mount_uploader :image, ImageUploader
	
	def full_street_address
		[street,city,state,postcode].join(', ')
	end

	geocoded_by :full_street_address
	after_validation :geocode

end
