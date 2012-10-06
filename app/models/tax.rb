class Tax < ActiveRecord::Base
  attr_accessible :name, :period
  belongs_to :agency
  validates :agency_id, presence: true
end
