# == Schema Information
#
# Table name: accounting_entities
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class AccountingEntity < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :companies
  has_many :users

  validates :name, presence: true
end
