require 'spec_helper'

describe "expirations/edit" do
  before(:each) do
    @expiration = assign(:expiration, stub_model(Expiration,
      :ending_first => 1,
      :ending_last => 1,
      :tax_id => 1
    ))
  end

  it "renders the edit expiration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => expirations_path(@expiration), :method => "post" do
      assert_select "input#expiration_ending_first", :name => "expiration[ending_first]"
      assert_select "input#expiration_ending_last", :name => "expiration[ending_last]"
      assert_select "input#expiration_tax_id", :name => "expiration[tax_id]"
    end
  end
end
