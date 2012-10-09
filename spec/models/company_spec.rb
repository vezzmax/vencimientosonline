# == Schema Information
#
# Table name: companies
#
#  id                   :integer          not null, primary key
#  name                 :string(255)
#  verificationDigit    :integer
#  close_date           :date
#  accounting_entity_id :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'spec_helper'

describe Company do

  let(:accountingEntity) { FactoryGirl.create(:accountingEntity) }

  before do
    @company =  accountingEntity.companies.build(name: "Compania NN", verificationDigit: "4", closeDate: Date.today+40 )
  end

  subject { @company }
 
  it { should respond_to(:name) }
  it { should respond_to(:closeDate) }
  it { should respond_to(:verificationDigit) }
  it { should respond_to(:accounting_entity) }
  it { should be_valid }

  describe "when name is not present" do
    before { @company.name = " " }
    it { should_not be_valid }
  end

  describe "when closeDate is not present" do
    before { @company.closeDate = nil }
    it { should_not be_valid }
  end

  describe "verificationDigit should be only 1 number from 0-9" do
    before { @company.verificationDigit = 12 }
    it { should_not be_valid }
  end

end
