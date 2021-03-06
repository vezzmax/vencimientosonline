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
  has_many :company_expirations

  belongs_to :tax
  belongs_to :company
  #has_many :users, through: :supervisions

  #Retorna a partir de que nivel se puede agregar un supervisor
  def minimumSupervisorLevel
  	supervisions.count + 1
  end
end
