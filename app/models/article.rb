class Article < ApplicationRecord
	mount_uploader :image , ImageUploader
	belongs_to :user 
	# creator's assoction
	validates :name , presence: true

	has_many :comments
	has_many :users, through: :comments , dependent: :destroy
	after_save:user_save
	private
	def user_save
		writer=User.find(self.user_id)
		#writer.articles<<self
	end
end
