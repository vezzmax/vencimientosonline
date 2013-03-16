class AdminController < ApplicationController
  
  def home
  	@companies = current_user.accounting_entity.companies
  end
end
