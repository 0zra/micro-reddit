class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: true,
  length: { minimum: 2, maximum: 50 }
  validates :text, presence: true, length: {minimum: 10, maximum: 500}
  belongs_to :user
  has_many :comments, dependent: :destroy
end
