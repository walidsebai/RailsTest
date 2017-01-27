class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :picture ,ProfileUploader
  validates :username , presence: true
  has_many :creations, class_name: "Article" , dependent: :destroy
  has_many :comments
  has_many :articles, through: :comments , dependent: :destroy

end
