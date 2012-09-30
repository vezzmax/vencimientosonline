class AccountingEntity < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :companies
end
