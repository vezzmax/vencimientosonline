require 'spec_helper'

describe "agencies/new" do
  before(:each) do
    assign(:agency, stub_model(Agency,
      :name => "MyString",
      :scope => "MyString"
    ).as_new_record)
  end

  it "renders new agency form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => agencies_path, :method => "post" do
      assert_select "input#agency_name", :name => "agency[name]"
      assert_select "input#agency_scope", :name => "agency[scope]"
    end
  end
end
