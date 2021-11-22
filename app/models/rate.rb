# app/models/rate.rb
#
class Rate < ActiveRecord::Base
	belongs_to :post
 
end