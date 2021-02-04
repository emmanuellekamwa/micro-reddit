class Post < ApplicationRecord
  validates :title, presence: true, length: { in: 3..40 }
  validates :body, presence: true
  validates :user_id, presence: true
  belongs_to :user
  has_many :comments
end
