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

  before do
    @company = Company.new(name:"Compañia NN", verificationDigit: "4", closeDate: Date.today+40)
  end

  subject { @company }
 
  #it { should respond_to(:authenticate) }
  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:companies) }
  it { should respond_to(:users) }

  describe "when name is not present" do
    before { @ae.name = " " }
    it { should_not be_valid }
  end


end
