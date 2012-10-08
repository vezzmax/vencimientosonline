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

require 'spec_helper'

describe Expiration do
  
  let(:tax) { FactoryGirl.create(:tax) }
  before { @expiration = tax.expirations.build(date: Date.tomorrow(), endingFirst: "1", endingLast: "3") 
  }

  subject { @expiration}
  it { should respond_to(:tax) }
  #it { should respond_to(:agency_id) }
  it {should be_valid}

 
 describe "when tax_id is not present" do
    before { @expiration.tax_id = nil }
    it { should_not be_valid }
  end

  describe "with endingFirst greater than endingLast" do
  	before { 
  		@expiration.endingFirst = "7"
  		@expiration.endingLast = "1"
  	}
  	it { should_not be_valid }
  end

end
