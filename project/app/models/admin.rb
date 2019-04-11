class Admin < ApplicationRecord
  belongs_to :super_admin
  has_many :users
  has_many :posts
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :password, length: {minimum: 8, :message => 'Your password has less than 8 characters'}
  validates :password, length: {maximum: 12, :messages => 'Your password has more than 12 characters'}
  validates :nickname, :presence => true
end
