class User < ActiveRecord::Base

  include BCrypt

  has_many :albums
  has_many :photos, :through => :albums

  validates :username, :uniqueness => true,
            :presence => true

  validates :email, :presence => true,
            :format => {:with =>  /\w[-._\w]*\w@\w[-._\w]*\w\.\w{2,3}/},
            :uniqueness => true

  validates :password, :presence => true
  validates_length_of :password, :minimum => 5

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.create( args = {} )
    @user = User.new(:username => args[:username], :email => args[:email])
    @user.password = args[:password]
    @user.save!
    @user
  end

  def self.authenticate(username, password)
    @user = User.find_by_username(username)
    @user.password == password
  end

end
