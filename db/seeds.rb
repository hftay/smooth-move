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
	{ name: "DT", phone: "0422188199", email: "dt@gmail.com", password: "pudding", remote_image_url: "https://pbs.twimg.com/profile_images/813584000082214912/5U3iZVs-.jpg" },
	{ name: "Darryl", phone: "0422188199", email: "darryl@gmail.com", password: "pudding", remote_image_url: "https://media.licdn.com/media/p/7/005/03c/1e2/27e4d4f.jpg" },
	{ name: "Hsing", phone: "0422188199", email: "hsing@gmail.com", password: "pudding", remote_image_url: "https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAIA_wDGAAAAAQAAAAAAAAnOAAAAJGRhMjc0ZTI3LWQ1ZGUtNDYxMC05YzNiLWZmMDQzMDQ3MGJmNQ.jpg" },
	{ name: "Jessica", phone: "0422188199", email: "jessica@gmail.com", password: "pudding", remote_image_url: "https://media.licdn.com/media/AAIA_wDGAAAAAQAAAAAAAA18AAAAJDkzNGI0OGMyLWIyNDUtNDc0ZC1iYmNhLTY3MDJmYWIwMzBlNw.jpg" },
	{ name: "Pauline", phone: "0422188199", email: "pauline@gmail.com", password: "pudding", remote_image_url: "https://media.licdn.com/media/AAEAAQAAAAAAAAokAAAAJDRjM2E5NzM1LWQ3MjEtNGM0My04ZmEzLTZkNzA0MGM0MDU1MQ.jpg" }
])

Listing.create([
	{title: "Help me move my fancy fridge", street: "45 William Street", city: "Melbourne", state: "Victoria", postcode: 3000, price: 30, description: "Van and one helper needed, short distance move!", remote_image_url: "http://www.heartsremained.com/wp-content/uploads/2013/11/open-refrigerator.jpg", creator: User.all[0], open: true, num_helpers_needed: 2, moving_date: Time.now.to_date},
	{title: "Help move Bed and Mattress", street: "1 Collins Street", city: "Melbourne", state: "Victoria", postcode: 3000, price: 49.99, description: "it's a king mattress so will need some serious muscles", remote_image_url: "https://s7d4.scene7.com/is/image/roomandboard/642103?$prodzoom0$&size=498,300&scl=1", creator: User.all[1], open: true, num_helpers_needed: 3, moving_date: Time.now.to_date},
	{title: "Borrow vehicle for move", street: "130 Dudley Street", city: "Melbourne", state: "Victoria", postcode: 3003, price: 50, description: "need vehicle for 1 hour use to move stuff", remote_image_url: "http://www.cumminsforum.com/forum/attachments/4th-gen-non-powertrain/36195d1311561753-let-me-see-black-trucks-img_1446.jpg", creator: User.all[2], open: true, num_helpers_needed: 1, moving_date: Time.now.to_date},
	{title: "Supplies needed for relocation", street: "45 William Street", city: "Melbourne", state: "Victoria", postcode: 3000, price: 10, description: "need many boxes, ideally evenly sized, and high quality ones!", remote_image_url: "http://boxbros.com/wp-content/uploads/2016/03/moving-happy-boxes.jpg", creator: User.all[3], open: true, num_helpers_needed: 1, moving_date: Time.now.to_date},
	{title: "Desperately need help with moving inner CBD this weekend", street: "1 Exhibition Street", city: "Melbourne", state: "Victoria", postcode: 3000, price: 10, description: "Will offer a can of beer", remote_image_url: "https://s.hswstatic.com/gif/moving-checklist-1.jpg", creator: User.all[4], open: true, num_helpers_needed: 3, moving_date: Time.now.to_date},
	{title: "Help needed to move couch, will pay top dollars", street: "23 Therry Street", city: "Melbourne", state: "Victoria", postcode: 3000, price: 150, description: "please contact if interested", remote_image_url: "https://usercontent1.hubstatic.com/6780598_f1024.jpg", creator: User.all[0], open: true, num_helpers_needed: 5, moving_date: Time.now.to_date},
	{title: "Help needed to move an incredible coffee table", street: "45 William Street", city: "Melbourne", state: "Victoria", postcode: 3000, price: 35, description: "Pizza if you help", remote_image_url: "https://i.pinimg.com/736x/01/54/55/015455c2cb944d63b65781a03354e0fc--multifunctional-furniture-small-spaces-compact-furniture.jpg", creator: User.all[0], open: true, num_helpers_needed: 1, moving_date: Time.now.to_date},
	{title: "This washing machine is not going to move itself", street: "45 William Street", city: "Melbourne", state: "Victoria", postcode: 3000, price: 25, description: "Help needed to move", remote_image_url: "http://ksassets.timeincuk.net/wp/uploads/sites/54/2017/01/Best-Washing-Machines.jpg", creator: User.all[0], open: true, num_helpers_needed: 1, moving_date: Time.now.to_date},
	{title: "Bought this on gumtree, need help moving", street: "45 William Street", city: "Melbourne", state: "Victoria", postcode: 3000, price: 80, description: "it's heavy", remote_image_url: "https://www.diamondbackbilliards.com/img/Olhausen/Olhausen-Billiards-Rococo-Pool-Tables-L.jpg", creator: User.all[0], open: true, num_helpers_needed: 1, moving_date: Time.now.to_date},
	{title: "If you can see me something is wrong", street: "45 William Street", city: "Melbourne", state: "Victoria", postcode: 3000, price: 80, description: "open: false", remote_image_url: "", creator: User.all[4], open: false, num_helpers_needed: 1, moving_date: Time.now.to_date}			
	])

Tag.create([
	{ name: "Transport" },
	{ name: "Labour" },
	{ name: "Supplies" }
])

UserListing.create([
	{ user: User.all[1], listing: Listing.all[0] },
	{ user: User.all[2], listing: Listing.all[1] },
	{ user: User.all[0], listing: Listing.all[1] },
	{ user: User.all[0], listing: Listing.all[5] }		
])

ListingTag.create([
	{ listing: Listing.all[0], tag: Tag.all[0] },
	{ listing: Listing.all[0], tag: Tag.all[1] },
	{ listing: Listing.all[1], tag: Tag.all[0] },
	{ listing: Listing.all[1], tag: Tag.all[1] },	
	{ listing: Listing.all[2], tag: Tag.all[0] },
	{ listing: Listing.all[3], tag: Tag.all[2] },
	{ listing: Listing.all[4], tag: Tag.all[0] },	
	{ listing: Listing.all[4], tag: Tag.all[1] },
	{ listing: Listing.all[4], tag: Tag.all[2] },	

	{ listing: Listing.all[5], tag: Tag.all[0] },
	{ listing: Listing.all[5], tag: Tag.all[1] },	
	{ listing: Listing.all[5], tag: Tag.all[2] },	

	{ listing: Listing.all[6], tag: Tag.all[1] },	

	{ listing: Listing.all[7], tag: Tag.all[1] },	

	{ listing: Listing.all[8], tag: Tag.all[0] },
	{ listing: Listing.all[8], tag: Tag.all[1] }

])
