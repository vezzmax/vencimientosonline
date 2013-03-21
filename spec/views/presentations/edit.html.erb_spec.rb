require 'spec_helper'

describe "presentations/edit" do
  before(:each) do
    @presentation = assign(:presentation, stub_model(Presentation,
      :detail => "MyString",
      :expiration_id => 1,
      :user_id => 1
    ))
  end

  # it "renders the edit presentation form" do
  #   render

  #   # Run the generator again with the --webrat flag if you want to use webrat matchers
  #   assert_select "form", :action => presentations_path(@presentation), :method => "post" do
  #     assert_select "input#presentation_detail", :name => "presentation[detail]"
  #     assert_select "input#presentation_expiration_id", :name => "presentation[expiration_id]"
  #     assert_select "input#presentation_user_id", :name => "presentation[user_id]"
  #   end
  # end
end
