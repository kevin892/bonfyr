# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.destroy_all
User.destroy_all
Campground.destroy_all


kevin = User.create(username: "Kevin", email: "kevin811@gmail.com", password: "Kevin811", review_count: 2)

rmnp = Campground.create(name:"Water Park", total_sites: 98, address: "34 Highland Terrace, Estes Park, Colorado 80318", dates_open: "June 7 - October 2", directions: "Go south or something", contact_info: "email@gmail.com", description: "On the river", electric: true, latitude: "38929912", longitude: "2384923")

estes = Campground.create(name:"Estes Park", total_sites: 31, address: "42 Hill Road, Estes Park, Colorado 80318", dates_open: "June 1 - October 5", directions: "Go north or something", contact_info: "email@gmail.com", description: "On the river", electric: true, latitude: "38929912", longitude: "2384923")

boulder = Campground.create(name:"Boulder Park", total_sites: 8, address: "Road road, Boulder, Colorado 80318", dates_open: "June 7 - October 2", directions: "Go south or something", contact_info: "email@gmail.com", description: "On the river", electric: true, latitude: "38929912", longitude: "2384923")

Photo.create(campground: boulder, photo: "urllllllllllllasdfad")
Photo.create(campground: boulder, photo: "asdfasdfasdfasdf")
Photo.create(campground: estes, photo: "url")

Review.create(user: kevin, campground: boulder, picture: "urlllllasf", review_content: "SO GOood", rating: 4)

Review.create(user: kevin, campground: estes, picture: "url", review_content: "It was ok", rating: 2)

Review.create(user: kevin, campground: rmnp, picture: "uasdfsdll", review_content: "asdfasdfasdf", rating: 3)
Review.create(user: kevin, campground: rmnp, picture: "urlllll", review_content: "decent", rating: 3)
Review.create(user: kevin, campground: rmnp, picture: "urlllll", review_content: "decent", rating: 3)
Review.create(user: kevin, campground: rmnp, picture: "urlllll", review_content: "decent", rating: 3)
