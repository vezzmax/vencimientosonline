require 'spec_helper'

describe "expirations/index" do
  before(:each) do
    assign(:expirations, [
      stub_model(Expiration,
        :ending_first => 1,
        :ending_last => 2,
        :tax_id => 3
      ),
      stub_model(Expiration,
        :ending_first => 1,
        :ending_last => 2,
        :tax_id => 3
      )
    ])
  end

  it "renders a list of expirations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
