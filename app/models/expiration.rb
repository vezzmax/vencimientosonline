# == Schema Information
#
# Table name: expirations
#
#  id          :integer          not null, primary key
#  date        :date
#  endingFirst :integer
#  endingLast  :integer
#  tax_id      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Expiration < ActiveRecord::Base
  attr_accessible :date, :endingFirst, :endingLast
  
  has_many :presentations
  belongs_to :tax
  
  validates :tax_id, presence: true
  validates :endingLast, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 9, :greater_than_or_equal_to => :endingFirst }

end
