# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Driver.delete_all
kermit = Driver.create name: "Kermit", photo_url: 'https://image.tmdb.org/t/p/w180_and_h180_face/g7WvscEncFatDx5dzDcsmZgypah.jpg'
ernie = Driver.create name: "Ernie", photo_url: 'http://www.aveleyman.com/Gallery/2017/F/5558-9709-0.jpg'
hoke = Driver.create name: "Hoke", photo_url: 'https://i.pinimg.com/originals/d0/c0/1e/d0c01eede4745111b025072100a303bd.jpg'

Ride.delete_all
Ride.create passenger_name: 'Molly', origin: '55 W. Huron St, Chicago, IL', destination: '420 E. Superior St, Chicago, IL', driver_id: kermit.id
Ride.create passenger_name: 'Brian', origin: '1810 W. Roosevelt Rd, Chicago, IL', destination: '1901 W. Madison St, Chicago, IL', driver_id: ernie.id
Ride.create passenger_name: 'Jake', origin: '333 W. 35th St, Chicago, IL', destination: '1060 W. Addison St, Chicaog, IL', driver_id: hoke.id

print "There are now #{Ride.count} rides\n"
print "There are now #{Driver.count} drivers\n"
# Google StreetView API key: AIzaSyC-yYPhcpquyNen8Drrfwa-DXQxnXTugYc
