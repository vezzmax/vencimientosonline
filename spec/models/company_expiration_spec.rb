# == Schema Information
#
# Table name: company_expirations
#
#  id                :integer          not null, primary key
#  associated_tax_id :integer
#  date              :date
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'spec_helper'

describe CompanyExpiration do
  pending "add some examples to (or delete) #{__FILE__}"
end
