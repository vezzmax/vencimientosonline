# == Schema Information
#
# Table name: expirations
#
#  id          :integer          not null, primary key
#  date        :date
#  ending_first :integer
#  ending_last  :integer
#  tax_id      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Expiration < ActiveRecord::Base
  attr_accessible :date, :ending_first, :ending_last, :tax_id
  
  has_many :presentations
  belongs_to :tax
  
  validates :tax_id, presence: true
  validates :ending_last, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 9, :greater_than_or_equal_to => :ending_first }

end
