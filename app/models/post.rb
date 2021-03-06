class Post < ApplicationRecord

  belongs_to :user
  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 140 }
  validates :content, presence: true

  has_many :comments
end
