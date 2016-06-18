require 'data_mapper'
require 'dm-postgres-adapter'
require 'bcrypt'
require 'rack'

class Users

  include DataMapper::Resource
  property :id, Serial
  property :username, String
  property :password_digest, String, length: 60

  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  end

end

DataMapper.setup(:default, "postgres://localhost/bookmark_manager_test")
DataMapper.finalize
DataMapper.auto_upgrade!
