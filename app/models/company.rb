# == Schema Information
#
# Table name: companies
#
#  id                   :integer          not null, primary key
#  name                 :string(255)
#  CUIT                 :string(255)
#  close_date           :date
#  accounting_entity_id :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Company < ActiveRecord::Base
  attr_accessible :CUIT, :accounting_entity_id, :close_date, :name
  belongs_to :accounting_entity
end
