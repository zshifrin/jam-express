class Party < ApplicationRecord
	belongs_to :concert
	has_many :users
end
