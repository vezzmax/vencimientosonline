require 'spec_helper'

describe "taxes/new" do
  before(:each) do
    assign(:tax, stub_model(Tax,
      :name => "MyString",
      :period => "MyString",
      :category => "MyString"
    ).as_new_record)
  end

  it "renders new tax form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => taxes_path, :method => "post" do
      assert_select "input#tax_name", :name => "tax[name]"
      assert_select "input#tax_period", :name => "tax[period]"
      assert_select "input#tax_category", :name => "tax[category]"
    end
  end
end
