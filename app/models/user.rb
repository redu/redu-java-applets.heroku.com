class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :password, :on => :create
  attr_accessible :email, :password, :password_confirmation
  before_create :generate_token

  def generate_token
    self.token ||= (0...8).map{65.+(rand(25)).chr}.join
  end
end
