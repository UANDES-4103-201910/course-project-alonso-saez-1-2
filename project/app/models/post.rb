class Post < ApplicationRecord
  belongs_to :wall
  belongs_to :super_admin
  belongs_to :admin
  has_many :comments
  has_and_belongs_to_many :users
  has_and_belongs_to_many :dumpsters
end
