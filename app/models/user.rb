class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :articles , dependent: :destroy
  validates :username , presence: true
  has_many :comments
  has_many :articles, through: :comments , dependent: :destroy

end
