# == Schema Information
#
# Table name: associated_taxes
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  tax_id     :integer
#  company_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class AssociatedTax < ActiveRecord::Base
  attr_accessible :company_id, :tax_id, :user_id
end
