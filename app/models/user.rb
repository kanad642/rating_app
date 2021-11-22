# app/models/user.rb
#
class User < ActiveRecord::Base
  validates :name, presence: true
  validates :api_key, presence: true, uniqueness: { case_sensitive: true }, length: { is: 12 }

  has_many :posts
  
end