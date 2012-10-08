class Tax < ActiveRecord::Base
  attr_accessible :name, :period
  belongs_to :agency
  has_many :expirations, dependent: :destroy
  validates :agency_id, presence: true
end
