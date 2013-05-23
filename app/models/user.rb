class User < ActiveRecord::Base

  include BCrypt

  has_many :albums
  has_many :photos, :through => :albums

  validates :username, :uniqueness => true
  validates :username, :presence => true
  validates :email, :uniqueness => true
  validates :email, :presence => true
  validates :password, :presence => true

  before_save :encrypt

  def self.authenticate(email, password)
    user = User.find_by_email(email)
    if user && Password.new(user.password) == password
      true
    else
      false
    end
  end

  def encrypt
    to_hash = self.password
    self.password = BCrypt::Password.create(to_hash)
  end

end
