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


end
