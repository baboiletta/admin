class User < ApplicationRecord
  rolify
  # attr_accessor :avatar_file_name
  # before_action :authenticate_user!

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  has_many_attached :avatars
  after_initialize :set_default_role, if: :new_record?

  validates :roles, presence: true

  def set_default_role
    self.add_role(:normal)
  end
end
