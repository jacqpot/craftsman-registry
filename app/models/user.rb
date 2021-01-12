class User < ApplicationRecord
  has_many :toolbelts
  has_many :skills, through: :toolbelts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
