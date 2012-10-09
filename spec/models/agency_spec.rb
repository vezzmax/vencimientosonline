# == Schema Information
#
# Table name: agencies
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  scope      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Agency do

  before do
    @agency = Agency.new(name:"AFIP", scope:"Nacional")
  end

  subject { @agency }
 
  it { should respond_to(:name) }
  it { should respond_to(:scope) }
  it { should respond_to(:taxes) }
  it { should be_valid}

  describe "invalid scope value in scope definitions" do
    before { @agency.scope = "invalid"}
    it {should_not be_valid}
  end

end
