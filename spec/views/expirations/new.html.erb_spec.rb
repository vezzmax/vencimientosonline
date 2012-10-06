require 'spec_helper'

describe "expirations/new" do
  before(:each) do
    assign(:expiration, stub_model(Expiration,
      :endingFirst => 1,
      :endingLast => 1,
      :tax_id => 1
    ).as_new_record)
  end

  it "renders new expiration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => expirations_path, :method => "post" do
      assert_select "input#expiration_endingFirst", :name => "expiration[endingFirst]"
      assert_select "input#expiration_endingLast", :name => "expiration[endingLast]"
      assert_select "input#expiration_tax_id", :name => "expiration[tax_id]"
    end
  end
end
