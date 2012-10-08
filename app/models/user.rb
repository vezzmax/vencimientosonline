class User < ActiveRecord::Base
  attr_accessible :accounting_entity_id, :email, :name, :role_id
end
