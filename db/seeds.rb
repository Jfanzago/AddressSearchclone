# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

images = [
	[open("http://www.rentingmyhouse.net/wp-content/uploads/2012/03/9-Things-to-Do-Before-Renting-Your-House.jpg"),
		open("http://images.suemoutonrealestate.com/SS115_ZZ00005391_01.JPG"),
		open("http://cdn2.tinyhousedesign.com/wp-content/uploads/2014/11/CDG__A_4547005.jpg"),
		open("http://www.rentingmyhouse.net/wp-content/uploads/2012/03/9-Things-to-Do-Before-Renting-Your-House.jpg")
		],
	[open("http://www.letsgopattaya.com/images/house-for-rent-in-pattaya.png"),
	    open("http://www.pattayapropertyfinder.com/WebImages/PFH10768/Thailand-Pattaya-Property-House-for-Rent19.jpg"),
        open("http://cdn1.blog-media.zillowstatic.com/1/Philadelphia-7a1c73.jpeg"),
	    open("http://www.letsgopattaya.com/images/house-for-rent-in-pattaya.png")],
	[open("http://image1.apartmentguide.com/imgr/0056225478c06e8b65f1ad83fc2bf737/160-160?city=Charlotte&property_name=Anson%20At%20The%20Lakes"),
		open("https://images1.estately.net/37_2156957_0_1372575153_636x435.jpg"),
		open("http://images.ncinfo.net/phototmp/Thumbnails/ExtraLarge/88721/89E5C31C-9914-40C8-8814-837549CC1A1F.jpg"),
		open("http://thumbs.trulia-cdn.com/pictures/thumbs_3/ps.79/9/a/8/e/picture-uh=f425796d998dcfad2510373f04b9d72-ps=9a8ed5b58b24f391b4e27c583295093.jpg")],
	[open("http://ads.rentbits.com/img/user/24098/118522/1_3fe89a8f.jpg"),
		open("http://aoaga.org/sitebuilder/images/Seattle_house_for_rent_with_ocean_view-294x214.jpg"),
		open("http://cdn.thecoolist.com/wp-content/uploads/2015/04/Lightbox-House-by-Bohlin-Cywinski-Jackson-1-960x540.jpg")],
	[open("http://pauli-uribe.com/wp-content/gallery/washington-avenue-residence-two-cambridge-ma/01_washington-avenue-residence-one-cambridge-ma.jpg"),
		open("http://image.apartmentguide.com/imgr/92e1c36067e6d8616f0ee81bbeeebcac/?city=Cambridge&property_name=Axiom%20Apartment%20Homes&title=Spacious%20living%20rooms%20feature%20wood%20flooring%20throughout%20and%20plenty%20of%20natural%20light"),
		open("https://photos.roomorama-cache.com/photos/rooms/3245735/3245735_medium.jpg"),
		open("https://images0.estately.net/39_71854647_8_1433961248.jpg"),
		open("http://photos3.zillowstatic.com/p_h/IS91nbcu3j1ol11000000000.jpg")]
]

(0..4).each do | i |

Home.create(
	city: Faker::Address.city, 
	address: Faker::Address.street_address,
	zip: Faker::Address.zip,
	state: Faker::Address.state,
	date: Faker::Date.between(4.days.ago, Date.today),
	name: Faker::Name.name,
	email: Faker::Internet.email,
	phone_number: Faker::PhoneNumber.phone_number,
	images: images[i]
)

end

