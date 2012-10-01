class User < ActiveRecord::Base
  attr_accessible :lastname, :name, :password, :role_id, :username
end
