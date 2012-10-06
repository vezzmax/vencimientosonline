class Presentation < ActiveRecord::Base
  attr_accessible :date, :detail, :expiration_id, :user_id
end
