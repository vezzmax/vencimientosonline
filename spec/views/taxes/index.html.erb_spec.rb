require 'spec_helper'

describe "taxes/index" do
  before(:each) do
    assign(:taxes, [
      stub_model(Tax,
        :name => "Name",
        :period => "Period",
        :category => "Category"
      ),
      stub_model(Tax,
        :name => "Name",
        :period => "Period",
        :category => "Category"
      )
    ])
  end

  it "renders a list of taxes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Period".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
  end
end
