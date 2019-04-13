class User < ApplicationRecord
  belongs_to :super_admin
  belongs_to :admin
  has_many :posts
  has_and_belongs_to_many :posts
  has_and_belongs_to_many :blacklists
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :password, length: {minimum: 8, :message => 'Your password has less than 8 characters'}
  validates :password, length: {maximum: 12, :messages => 'Your password has more than 12 characters'}
  validates :nickname, :presence => true
  before_save :only_one_email
  
  def only_one_email
	count = 0
	for u in User.all do
		if u[:email] == self.email
			count = 1
		end
	end
	if count == 1
		puts("This email is already taken")
		throw :abort
	end
  end
end
