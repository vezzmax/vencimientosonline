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
#  password_digest      :string(255)
#

class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  attr_accessible :email, :name, :password, :password_confirmation, :accounting_entity_id

  has_many :supervisions
  has_many :presentations
  belongs_to :accounting_entity

  has_secure_password

  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, 
  					format: { with: VALID_EMAIL_REGEX}, 
  					uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  before_save { |user| user.email = email.downcase }

  before_save :create_remember_token

  #Vencimientos de nivel 1
  def directExpirations
    @de = Array.new()
    supervisions.where(level: 1).each do |supervision|
      #@de.push(supervision.associated_tax.company_expirations)
      @de + supervision.associated_tax.company_expirations
    end
    return @de
  end

  def expirations(withinDays)
  end

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end

end
