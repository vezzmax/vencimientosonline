# == Schema Information
#
# Table name: companies
#
#  id                   :integer          not null, primary key
#  name                 :string(255)
#  verificationDigit    :integer
#  closeDate            :date
#  accounting_entity_id :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Company < ActiveRecord::Base
  attr_accessible :verificationDigit, :closeDate, :name
  belongs_to :accounting_entity
  has_many :associated_taxes, :class_name => "AssociatedTax"


  validates :name, presence: true
  validates :closeDate, presence: true
  validates :verificationDigit, presence: true, :inclusion => { :in => 0..9 }
  validates :accounting_entity_id, presence: true

	def associateTax (tax)
	   associated_taxes.create(company_id: id, tax_id: tax.id)
	end

	def unattendedTaxes 
	end

end
