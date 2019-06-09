class Post < ApplicationRecord
  belongs_to :wall
  belongs_to :super_admin
  belongs_to :admin
  belongs_to :user
  has_many :comments
  has_one_attached :photo
  has_many :upvoteds, dependent: :destroy
  has_many :downvoteds, dependent: :destroy
  has_many :inappropiates, dependent: :destroy
  has_many :follows, dependent: :destroy
  has_many :shares, dependent: :destroy
  #belongs_to :users
  #belongs_to :dumpsters
  validates :text, length: {minimum: 1, :message => 'Your text has less than 1 characters'}
  validates :title, length: {minimum: 1, :message => 'Your title has less than 1 characters'}
end
