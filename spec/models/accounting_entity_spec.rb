# == Schema Information
#
# Table name: accounting_entities
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe AccountingEntity do

  before do
    @ae = AccountingEntity.new(name:"Estudio NN", description:"Test desc")
  end

  subject { @ae }
 
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
