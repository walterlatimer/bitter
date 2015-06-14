class User < ActiveRecord::Base
  has_secure_password

  validates :username, uniqueness: true

  def self.authenticate(username, password)
    find_by(username: username).try(:authenticate, password)
  end
end
