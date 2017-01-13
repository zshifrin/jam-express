class Concert < ApplicationRecord
	belongs_to :band
	has_many :users
end
