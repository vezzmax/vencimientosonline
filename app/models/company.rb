# == Schema Information
#
# Table name: companies
#
#  id                   :integer          not null, primary key
#  name                 :string(255)
#  verificationDigit    :integer
#  close_date           :date
#  accounting_entity_id :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Company < ActiveRecord::Base
  attr_accessible :verificationDigit, :closeDate, :name
  belongs_to :accounting_entity

  validates :name, presence: true
  validates :closeDate, presence: true
  validates :verificationDigit, presence: true, :inclusion => { :in => 0..9 }
  validates :accounting_entity_id, presence: true

end
