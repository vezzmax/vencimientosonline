require 'spec_helper'

describe "presentations/new" do
  before(:each) do
    assign(:presentation, stub_model(Presentation,
      :detail => "MyString",
      :expiration_id => 1,
      :user_id => 1
    ).as_new_record)
  end

end
