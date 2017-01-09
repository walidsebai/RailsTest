class Article < ApplicationRecord
	belongs_to :user 
	validates :name , presence: true

	has_many :comments
	has_many :users, through: :comments , dependent: :destroy
end
