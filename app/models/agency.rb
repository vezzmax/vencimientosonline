class Agency < ActiveRecord::Base
  attr_accessible :name, :scope
  has_many :taxes, :class_name => "Tax"
end
