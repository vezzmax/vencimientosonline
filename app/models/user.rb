# == Schema Information
#
# Table name: users
#
#  id                   :integer          not null, primary key
#  name                 :string(255)
#  email                :string(255)
#  accounting_entity_id :integer
#  role_id              :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  attr_accessible :email, :name, :password, :password_confirmation

  has_secure_password

  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, 
  					format: { with: VALID_EMAIL_REGEX}, 
  					uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  before_save { |user| user.email = email.downcase }
end
