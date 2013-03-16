# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  name                   :string(255)
#  accounting_entity_id   :integer
#  role_id                :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :accounting_entity_id
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  

  has_many :supervisions
  has_many :presentations
  belongs_to :accounting_entity
  belongs_to :role

  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, 
  					format: { with: VALID_EMAIL_REGEX}, 
  					uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  before_save { |user| user.email = email.downcase }

  #Vencimientos de nivel 1
  def directExpirations
    @de = Array.new()
    supervisions.where(level: 1).each do |supervision|
      @de.push(*supervision.associated_tax.company_expirations)
    end
    return @de
  end

  def expirations(withinDays)
  end

end
