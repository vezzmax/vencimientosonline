require 'spec_helper'

describe "presentations/show" do
  before(:each) do
    @presentation = assign(:presentation, stub_model(Presentation,
      :detail => "Detail",
      :expiration_id => 1,
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Detail/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
