require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the content 'VencimeintosOnline.com'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_content('VencimientosOnline.com')
    end
  end

  describe "Contact page" do

    it "should have the content 'Contacto'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => "Contacto")
    end
  end
  
  describe "About page" do

    it "should have the content 'Acerca de'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => "Acerca de")
    end
  end

  describe "Titles" do
  	it "should have the right title" do
  		visit '/static_pages/home'
  		page.should have_selector('title', :text => "VencimientosOnline.com | Home")
	end
  end
end