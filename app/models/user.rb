class User < ActiveRecord::Base

  has_many :albums
  has_many :photos, :through => :albums

  validates :username, :uniqueness => true
  validates :username, :presence => true
  validates :email, :uniqueness => true
  validates :email, :presence => true
  validates :password, :presence => true

end
