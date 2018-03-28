class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy # when we delete the post, also delete all its comments

  validates :title, :content, presence: true
end
