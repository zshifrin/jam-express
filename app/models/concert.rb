require 'time'

class Concert < ApplicationRecord
	belongs_to :band
	has_and_belongs_to_many :users

	def time
		date.strftime('%D')
	end
end
