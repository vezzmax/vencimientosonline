# == Schema Information
#
# Table name: associated_taxes
#
#  id         :integer          not null, primary key
#  tax_id     :integer
#  company_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe AssociatedTax do
  pending "add some examples to (or delete) #{__FILE__}"
end
