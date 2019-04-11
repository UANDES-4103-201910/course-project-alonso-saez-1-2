class User < ApplicationRecord
  belongs_to :super_admin
  belongs_to :admin
  has_and_belongs_to_many :posts
  has_and_belongs_to_many :blacklists
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :password, length: {minimum: 8, :message => 'Your password has less than 8 characters'}
  validates :password, length: {maximum: 12, :messages => 'Your password has more than 12 characters'}
  validates :nickname, :presence => true
end
