class User < ApplicationRecord
  # attr_accessor :avatar_file_name
  # before_action :authenticate_user!

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  # has_one_attached :avatar
end
