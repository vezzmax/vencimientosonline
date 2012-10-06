require 'spec_helper'

describe Agency do

  before do
    @agency = Agency.new(name:"AFIP", scope:"Nacional")
  end

  subject { @agency }
 
  #it { should respond_to(:authenticate) }
  it { should respond_to(:taxes) }
end
