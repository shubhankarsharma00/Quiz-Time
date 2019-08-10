class Assignment < ApplicationRecord
	belongs_to :author, class_name: 'Admin'
	has_many :assignings, dependent: :destroy
	has_many :questions, through: :assignings
end
