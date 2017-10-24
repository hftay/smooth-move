# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserListing.destroy_all
ListingTag.destroy_all
Tag.destroy_all
Listing.destroy_all
User.destroy_all

User.create([
	{ name: "DT", phone: "0422188199", email: "a@gmail.com", password: "pudding" },
	{ name: "Darryl", phone: "0422188199", email: "a@gmail.com", password: "pudding" },	 
	{ name: "Hsing", phone: "0422188199", email: "a@gmail.com", password: "pudding" },
	{ name: "Jessica", phone: "0422188199", email: "a@gmail.com", password: "pudding" },
	{ name: "Pauline", phone: "0422188199", email: "a@gmail.com", password: "pudding" }	
])

Listing.create(title: "Van and one helper needed", street: "45 William Street", city: "Melbourne", state: "Victoria", postcode: 3000, price: 30, description: "help me move my fridge and washer, short distance move!", image: "furniture.png", creator: User.first, open: true, num_helpers_needed: 1)

Tag.create([
	{ name: "Transport" },
	{ name: "Labour" },
	{ name: "Supplies" }
])

UserListing.create([
	{ user: User.all[1], listing: Listing.first },
	{ user: User.all[2], listing: Listing.first }
])

ListingTag.create([
	{ listing: Listing.first, tag: Tag.all[0] },
	{ listing: Listing.first, tag: Tag.all[1] }
])



