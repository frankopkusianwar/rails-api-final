# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Insert categories data in the database

computers = Category.create(title:'Computers', metaTitle:'computers', slug:'computers', content:'computers available for sale')
desktops = Category.create(title:'Desktops', metaTitle:'desktops', slug:'desktops', content:'desktops available for sale', parent_id:computers.id)
laptops = Category.create(title:'Laptops', metaTitle:'laptops', slug:'laptops', content:'laptops available for sale', parent_id:computers.id)

phones = Category.create(title:'Phones & Tablets', metaTitle:'phones', slug:'phones-&-tablets', content:'phones & tablets available for sale')
mobilePhones = Category.create(title:'Mobile phones', metaTitle:'mobile phones', slug:'mobile-phones', content:'mobile phones available for sale', parent_id:phones.id)
tablets = Category.create(title:'Tablets', metaTitle:'tablets', slug:'tablets', content:'tablets available for sale', parent_id:phones.id)
smartWatches = Category.create(title:'Smart watches & Trackers', metaTitle:'smart watches', slug:'smart-watches-&-trackers', content:'smart watches available for sale', parent_id:phones.id)

tvDvd = Category.create(title:'TV & DVD equipment', metaTitle:'tv and dvd', slug:'tv-&-dvd-equipment', content:'TV and DVD equipment available for sale')

cameras = Category.create(title:'Cameras', metaTitle:'cameras', slug:'cameras', content:'cameras available for sale')
photoCameras = Category.create(title:'Photo cameras', metaTitle:'photo cameras', slug:'photo-cameras', content:'photo cameras available for sale', parent_id:cameras.id)
videoCameras = Category.create(title:'Video cameras', metaTitle:'video cameras', slug:'video-cameras', content:'video cameras available for sale', parent_id:cameras.id)
