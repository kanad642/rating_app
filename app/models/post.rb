# app/models/post.rb
#
class Post < ActiveRecord::Base
  validates :title, :content, :ip_address, presence: true

  belongs_to :user

  has_one :rate
  has_many :feedbacks


end
