class Post < ApplicationRecord
  belongs_to :wall
  belongs_to :superadmin
  belongs_to :admin
  belongs_to :user
  has_many :comments
  has_and_belongs_to_many :users
  has_and_belongs_to_many :dumpsters
  validates :text, length: {minimum: 1, :message => 'Your text has less than 1 characters'}
  validates :title, length: {minimum: 1, :message => 'Your title has less than 1 characters'}
end
