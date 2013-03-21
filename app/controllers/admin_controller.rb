class AdminController < ApplicationController
  
  def home
  	@companies = current_user.accounting_entity.companies
  	@unattended = current_user.accounting_entity.unattended_taxes

	  #@page = "www.google.com"
  end

  def root
  	@accounting_entities = AccountingEntity.all;
  end

  def companies
    @companies = current_user.accounting_entity.companies

    respond_to do |format|
      format.html { render "companies/index.html" } # show.html.erb
      format.json { render json: @companies }
    end
  end

  def entities
  	respond_to do |format|
      format.html { render "accounting_entities/index.html" } # show.html.erb
      format.json { render json: @companies }
  	end
  end

  
end
