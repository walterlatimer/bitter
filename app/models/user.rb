class User < ActiveRecord::Base

  has_secure_password

  has_many :complaints

  validates :username, uniqueness: true

  def self.authenticate(username, password)
    find_by(username: username).try(:authenticate, password)
  end
  
end
