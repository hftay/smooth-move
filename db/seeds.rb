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
	{ name: "DT", phone: "0422188199", email: "dt@gmail.com", password: "pudding" },
	{ name: "Darryl", phone: "0422188199", email: "darryl@gmail.com", password: "pudding" },
	{ name: "Hsing", phone: "0422188199", email: "hsing@gmail.com", password: "pudding" },
	{ name: "Jessica", phone: "0422188199", email: "jessica@gmail.com", password: "pudding" },
	{ name: "Pauline", phone: "0422188199", email: "pauline@gmail.com", password: "pudding" }
])

Listing.create([
	{title: "Van and one helper needed", street: "45 William Street", city: "Melbourne", state: "Victoria", postcode: 3000, price: 30, description: "help me move my fridge and washer, short distance move!", remote_image_url: "https://s7d4.scene7.com/is/image/roomandboard/642103?$prodzoom0$&size=498,300&scl=1", creator: User.first, open: false, num_helpers_needed: 2},
	{title: "Help move Bed and Mattress $50", street: "45 William Street", city: "Melbourne", state: "Victoria", postcode: 3000, price: 49.99, description: "mattress is King size, will need strong helpers", remote_image_url: "https://s7d4.scene7.com/is/image/roomandboard/642103?$prodzoom0$&size=498,300&scl=1", creator: User.all[1], open: true, num_helpers_needed: 3},
	{title: "Pickup truck needed for move", street: "45 William Street", city: "Melbourne", state: "Victoria", postcode: 3000, price: 50, description: "truck needs to be huge!", remote_image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/Ford_F-150_crew_cab_--_05-28-2011.jpg/1200px-Ford_F-150_crew_cab_--_05-28-2011.jpg", creator: User.all[2], open: true, num_helpers_needed: 9},
	{title: "Need boxes and tape for move", street: "45 William Street", city: "Melbourne", state: "Victoria", postcode: 3000, price: 15, description: "need many boxes!", remote_image_url: "https://images-na.ssl-images-amazon.com/images/I/41YMeClXekL._SL500_AC_SS350_.jpg", creator: User.all[3], open: true, num_helpers_needed: 2},
	{title: "Desperately need help for moving inner CBD", street: "45 William Street", city: "Melbourne", state: "Victoria", postcode: 3000, price: 30, description: "Would really appreciate some help!", remote_image_url: "https://i.pinimg.com/originals/01/e6/3b/01e63b3db69a0588553e681b820022cf.png", creator: User.all[4], open: true, num_helpers_needed: 3}, 
	{title: "Help me help me", street: "45 William Street", city: "Melbourne", state: "Victoria", postcode: 3000, price: 30, description: "Please x3", remote_image_url: "http://plantbasedrunner.com/wp-content/uploads/2013/01/moved.jpg", creator: User.all[0], open: true, num_helpers_needed: 5},
	{title: "Help needed to move an incredible coffee table", street: "45 William Street", city: "Melbourne", state: "Victoria", postcode: 3000, price: 10, description: "Pizza if you help", remote_image_url: "https://i.pinimg.com/736x/01/54/55/015455c2cb944d63b65781a03354e0fc--multifunctional-furniture-small-spaces-compact-furniture.jpg", creator: User.all[0], open: true, num_helpers_needed: 1}	
	])

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
	{ listing: Listing.first, tag: Tag.all[1] },
	{ listing: Listing.all[1], tag: Tag.all[0] },
	{ listing: Listing.all[1], tag: Tag.all[1] },	
	{ listing: Listing.all[2], tag: Tag.all[2] },
	{ listing: Listing.all[3], tag: Tag.all[2] },
	{ listing: Listing.all[4], tag: Tag.all[1] },	
	{ listing: Listing.all[5], tag: Tag.all[0] },
	{ listing: Listing.all[5], tag: Tag.all[1] },	
	{ listing: Listing.all[5], tag: Tag.all[2] }	
])
