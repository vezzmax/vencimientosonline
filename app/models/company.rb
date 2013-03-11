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
  has_many :company_expirations, through: :associated_taxes

  validates :name, presence: true
  validates :closeDate, presence: true
  validates :verificationDigit, presence: true, :inclusion => { :in => 0..9 }
  validates :accounting_entity_id, presence: true

	#Asocia un impuesto a esta companía. Luego se generan todos los vencimientos de esta companía
	#de acuerdo al impuesto pasado como parámetro. 
	def associateTax (tax)
	   associated_tax = associated_taxes.create!(company_id: id, tax_id: tax.id)
	   ce = tax.expirations.where("? between ending_first and ending_last", verificationDigit)
	   ce.each do |companyExpiration|
	   	 CompanyExpiration.create!(associated_tax_id: associated_tax.id, date: companyExpiration.date)
	   end
	   #TODO: Generate expiration for close date in the object creation.
	end

	#Retorna la lista de impuestos que no tienen supervisor asociado en el nivel 1.
	def unattendedTaxes
		@unattendedTaxes = Array.new()
		associated_taxes.each do |aTax|
			supervisionsLevelOne = aTax.supervisions.where("level = 1")
			if supervisionsLevelOne.empty?
				@unattendedTaxes.push(aTax)
			end 
		end 
		return @unattendedTaxes
	end

end
