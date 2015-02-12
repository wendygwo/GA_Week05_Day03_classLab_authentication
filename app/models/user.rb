require 'bcrypt'
class User < ActiveRecord::Base
	has_secure_password #made available from the bcrypt gem
end
