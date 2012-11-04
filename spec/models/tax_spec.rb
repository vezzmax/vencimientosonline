# == Schema Information
#
# Table name: taxes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  period     :string(255)
#  agency_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Tax do
  let(:agency) { FactoryGirl.create(:agency) }
# before do
#   # This code is wrong!
#   @tax = Tax.new(name: "Nuevo tax", agency_id: agency.id)
# end
  before { @tax = agency.taxes.build(name: "Monotributo", period: "Mensual") }

  subject { @tax}

  it { should respond_to(:name) }
  it { should respond_to(:agency_id) }

  it { should respond_to(:agency)}
  its(:agency) { should == agency }

  it { should be_valid }

  describe "when agency_id is not present" do
    before { @tax.agency_id = nil }
    it { should_not be_valid }
  end

# describe "accessible attributes" do
#   it "should not allow access to agency_id" do
#     expect do
#       Tax.new(agency_id: agency.id)
#     end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
#   end    
# end
  

  describe "destroy cascade" do
    before { @tax.save }
    let!(:exp1) do 
      FactoryGirl.create(:expiration, tax: @tax)
    end
    let!(:exp2) do
      FactoryGirl.create(:expiration, tax: @tax)
    end

    it "should destroy associated expirations" do
      expirations = @tax.expirations
      expirations.length.should == 2
      expirations.each do |expiration|
        Expiration.find_by_id(expiration.id).should_not be_nil
      end
      @tax.destroy
      expirations.each do |expiration|
        Expiration.find_by_id(expiration.id).should be_nil
      end
    end
  end
end
