class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :text, length: {minimum: 1, :message => 'Your comment has less than 1 characters'}
end

