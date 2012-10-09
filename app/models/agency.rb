# == Schema Information
#
# Table name: agencies
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  scope      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Agency < ActiveRecord::Base
  attr_accessible :name, :scope
  has_many :taxes, :class_name => "Tax"
  SCOPES = %w(Nacional Provincial Municipal)

  validates :name, presence: true
  validates_inclusion_of :scope, :in => SCOPES

  def self.scopes 
  	return SCOPES
  end
end
