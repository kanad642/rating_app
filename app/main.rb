require_relative 'db_connection'
require_relative './models/user'
require_relative './models/post'
require_relative './models/rate'
require_relative './models/feedback'

require 'rack'
require 'byebug'


# httparty2.rb
require "httparty"



class PostManager

    byebug
#     include HTTParty
#     base_uri 'https://jsonplaceholder.typicode.com'

#     def initialize()

#     end

#     def create_post(title, body, user_id)
#         params = { body: { title: title, body: body, userID: user_id } }
#         self.class.post("/posts", params).parsed_response
#     end


end

post_manager = PostManager.new()
# p post_manager.create_post("foo", "bar", 1)