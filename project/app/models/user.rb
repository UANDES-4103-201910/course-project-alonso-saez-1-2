class User < ApplicationRecord
  belongs_to :super_admin, optional: true
  belongs_to :admin, optional: true
  has_many :posts
  has_one_attached :image
  #belongs_to :posts
  #belongs_to :blacklists
  #validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  #validates :password, length: {minimum: 8, :message => 'Your password has less than 8 characters'}
  #validates :password, length: {maximum: 12, :messages => 'Your password has more than 12 characters'}
  #validates :nickname, :presence => true
  #before_save :only_one_email

  devise :omniauthable, :omniauth_providers => [:google_oauth2]

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first
  unless user
      user = User.create(nickname: data['name'], email: data['email'], password: Devise.friendly_token[0,20])
  end
  user
end

#  def self.from_omniauth(auth)
    # Either create a User record or update it based on the provider (Google) and the UID
#    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
#      user.token = auth.credentials.token
#      user.expires = auth.credentials.expires
#      user.expires_at = auth.credentials.expires_at
#      user.refresh_token = auth.credentials.refresh_token
#    end
#  end

#  def only_one_email
#    count = 0
#	  for u in User.all do
#      if u[:email] == self.email
#        count = 1
#		  end
#	  end
#	  if count == 1
#      puts("This email is already taken")
#		  throw :abort
#	  end
#  end

end
