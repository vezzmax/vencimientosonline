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

require 'spec_helper'

describe Expiration do
  
  let(:tax) { FactoryGirl.create(:tax) }
  before { @expiration = tax.expirations.build(date: Date.tomorrow(), ending_first: "1", ending_last: "3") 
  }

  subject { @expiration}
  it { should respond_to(:tax) }
  #it { should respond_to(:agency_id) }
  it {should be_valid}

 
 describe "when tax_id is not present" do
    before { @expiration.tax_id = nil }
    it { should_not be_valid }
  end

  describe "with ending_first greater than ending_last" do
  	before { 
  		@expiration.ending_first = "7"
  		@expiration.ending_last = "1"
  	}
  	it { should_not be_valid }
  end

end
