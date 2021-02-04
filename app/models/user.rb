class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :user_name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 5, maximum: 50 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 5, maximum: 50 }
  validates :password, presence: true, length: { minimum: 5, maximum: 50 }

  has_many :links
  has_many :comments
  has_many :posts
end
