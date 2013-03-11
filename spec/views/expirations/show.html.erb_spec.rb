require 'spec_helper'

describe "expirations/show" do
  before(:each) do
    @expiration = assign(:expiration, stub_model(Expiration,
      :ending_first => 1,
      :ending_last => 2,
      :tax_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
