require 'spec_helper'

describe "taxes/show" do
  before(:each) do
    @tax = assign(:tax, stub_model(Tax,
      :name => "Name",
      :period => "Period",
      :agency_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Period/)
    rendered.should match(/1/)
  end
end
