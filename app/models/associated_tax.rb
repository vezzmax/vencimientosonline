# == Descripción
# Representación de como un impuesto está asociado a una companía. Por ejemplo, 
# la companía Morocco Inc. tiene asociado el impuesto Atónomos.
# == Schema Information
#
# Table name: associated_taxes
#
#  id         :integer          not null, primary key
#  tax_id     :integer
#  company_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class AssociatedTax < ActiveRecord::Base
  attr_accessible :company_id, :tax_id
  has_many :supervisions
end
