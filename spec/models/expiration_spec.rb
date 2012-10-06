require 'spec_helper'

describe Expiration do
  
  let(:tax) { FactoryGirl.create(:tax) }
  before { @expiration = tax.expirations.build(date: Date.tomorrow(), endingFirst: "1", endingLast: "3") }

  subject { @expiration}
  it { should respond_to(:tax) }
  #it { should respond_to(:agency_id) }
  it {should be_valid}


  describe "with endingFirst greater than endingLast" do
  	before { 
  		@expiration.endingFirst = "7"
  		@expiration.endingLast = "1"
  	}
  	it { should_not be_valid }
  end


end
