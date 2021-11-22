# app/models/feedback.rb
#
class Feedback < ActiveRecord::Base
  belongs_to :post
end