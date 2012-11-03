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

class CompanyExpiration < ActiveRecord::Base
  attr_accessible :associated_tax_id, :date
end
