require 'spec_helper'

describe "taxes/edit" do
  before(:each) do
    @tax = assign(:tax, stub_model(Tax,
      :name => "MyString",
      :period => "MyString",
      :agency_id => 1
    ))
  end

  it "renders the edit tax form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => taxes_path(@tax), :method => "post" do
      assert_select "input#tax_name", :name => "tax[name]"
      assert_select "input#tax_period", :name => "tax[period]"
      assert_select "input#tax_agency_id", :name => "tax[agency_id]"
    end
  end
end
