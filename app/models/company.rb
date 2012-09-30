class Company < ActiveRecord::Base
  attr_accessible :CUIT, :accounting_entity_id, :close_date, :name
  belongs_to :accounting_entity
end
