class AccountingEntitiesController < ApplicationController
  # GET /accounting_entities
  # GET /accounting_entities.json
  def index
    @accounting_entities = AccountingEntity.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @accounting_entities }
    end
  end

  # GET /accounting_entities/1
  # GET /accounting_entities/1.json
  def show
    @accounting_entity = AccountingEntity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @accounting_entity }
    end
  end

  # GET /accounting_entities/new
  # GET /accounting_entities/new.json
  def new
    @accounting_entity = AccountingEntity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @accounting_entity }
    end
  end

  # GET /accounting_entities/1/edit
  def edit
    @accounting_entity = AccountingEntity.find(params[:id])
  end

  # POST /accounting_entities
  # POST /accounting_entities.json
  def create
    @accounting_entity = AccountingEntity.new(params[:accounting_entity])

    respond_to do |format|
      if @accounting_entity.save
        format.html { redirect_to @accounting_entity, notice: 'Accounting entity was successfully created.' }
        format.json { render json: @accounting_entity, status: :created, location: @accounting_entity }
      else
        format.html { render action: "new" }
        format.json { render json: @accounting_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /accounting_entities/1
  # PUT /accounting_entities/1.json
  def update
    @accounting_entity = AccountingEntity.find(params[:id])

    respond_to do |format|
      if @accounting_entity.update_attributes(params[:accounting_entity])
        format.html { redirect_to @accounting_entity, notice: 'Accounting entity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @accounting_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounting_entities/1
  # DELETE /accounting_entities/1.json
  def destroy
    @accounting_entity = AccountingEntity.find(params[:id])
    @accounting_entity.destroy

    respond_to do |format|
      format.html { redirect_to accounting_entities_url }
      format.json { head :no_content }
    end
  end
end
