# == Schema Information
#
# Table name: presentations
#
#  id               :integer          not null, primary key
#  date             :date
#  expiration_date  :date
#  detail           :string(255)
#  asociated_tax_id :integer
#  user_id          :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Presentation < ActiveRecord::Base
  attr_accessible :date, :detail, :user_id, :expiration_date, :associated_tax_id

  belongs_to :user
  belongs_to :associated_tax

  validates :expiration_date, presence: true
end
