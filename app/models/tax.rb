class Tax < ActiveRecord::Base
  attr_accessible :category, :name, :period

  PERIODS = ['Cuatrimestral', 'Anual', 'Mensual']
  CATEGORIES = ['Municipal', 'Provincial', 'Nacional']

  def self.periods
  	return PERIODS
  end

  def self.categories
  	return CATEGORIES
  end
end