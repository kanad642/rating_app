load 'app/db_connection.rb'
require 'faker'
load './app/models/user.rb'
load './app/models/post.rb'
load './app/models/feedback.rb'
load './app/models/rate.rb'


50.times do    
	User.create(
		name: Faker::Name.name_with_middle,
		api_key: [*('a'..'z'),*('0'..'9')].shuffle[0,12].join
	)
end	

puts "Number of User in your database: #{User.count}"


200000.times do    
	Post.create(
		title: Faker::Movie.title,
		content: Faker::Lorem.sentences,
		ip_address: Faker::Internet.ip_v4_address,
		user_id:  rand(1..50)
	)
end	

puts "Number of Post in your database: #{Post.count}"

10000.times do    
	Feedback.create(
		comment: Faker::Lorem.sentences,
		owner_id:  rand(1..50),
      post_id:  rand(1..200000)		
	)
end	

puts "Number of FeedBack in your database: #{Feedback.count}"

20000.times do    
	Rate.create(
		value:  rand(1..5),
      	post_id:  rand(1..200000)		
	)
end	

puts "Number of FeedBack in your database: #{Rate.count}"