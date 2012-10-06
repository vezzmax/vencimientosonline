require 'spec_helper'

describe "expirations/edit" do
  before(:each) do
    @expiration = assign(:expiration, stub_model(Expiration,
      :endingFirst => 1,
      :endingLast => 1,
      :tax_id => 1
    ))
  end

  it "renders the edit expiration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => expirations_path(@expiration), :method => "post" do
      assert_select "input#expiration_endingFirst", :name => "expiration[endingFirst]"
      assert_select "input#expiration_endingLast", :name => "expiration[endingLast]"
      assert_select "input#expiration_tax_id", :name => "expiration[tax_id]"
    end
  end
end
