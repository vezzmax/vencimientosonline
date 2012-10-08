# == Schema Information
#
# Table name: taxes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  period     :string(255)
#  agency_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tax < ActiveRecord::Base
  attr_accessible :name, :period
  belongs_to :agency
  has_many :expirations, dependent: :destroy
  validates :agency_id, presence: true
end
