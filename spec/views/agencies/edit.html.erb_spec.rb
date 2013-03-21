require 'spec_helper'

describe "agencies/edit" do
  before(:each) do
    @agency = assign(:agency, stub_model(Agency,
      :name => "MyString",
      :scope => "MyString"
    ))
  end

  # it "renders the edit agency form" do
  #   render

  #   # Run the generator again with the --webrat flag if you want to use webrat matchers
  #   assert_select "form", :action => agencies_path(@agency), :method => "post" do
  #     assert_select "input#agency_name", :name => "agency[name]"
  #     assert_select "input#agency_scope", :name => "agency[scope]"
  #   end
  # end
end
