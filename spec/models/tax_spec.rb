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


  describe "accessible attributes" do
    it "should not allow access to agency_id" do
      expect do
        Tax.new(agency_id: agency.id)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end    
  end
end
