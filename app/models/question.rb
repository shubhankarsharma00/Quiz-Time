class Question < ApplicationRecord
	has_many :assignings
	has_many :assignments, through: :assignings 
end
