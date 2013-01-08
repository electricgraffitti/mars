class PrintCollateralsController < ApplicationController
  
  before_filter :require_admin
  layout "admin"
  
  # GET /print_collaterals
  # GET /print_collaterals.json
  def index
    @print_collaterals = PrintCollateral.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @print_collaterals }
    end
  end

  # GET /print_collaterals/1
  # GET /print_collaterals/1.json
  def show
    @print_collateral = PrintCollateral.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @print_collateral }
    end
  end

  # GET /print_collaterals/new
  # GET /print_collaterals/new.json
  def new
    @print_collateral = PrintCollateral.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @print_collateral }
    end
  end

  # GET /print_collaterals/1/edit
  def edit
    @print_collateral = PrintCollateral.find(params[:id])
  end

  # POST /print_collaterals
  # POST /print_collaterals.json
  def create
    @print_collateral = PrintCollateral.new(params[:print_collateral])

    respond_to do |format|
      if @print_collateral.save
        format.html { redirect_to admin_dashboard_path, notice: 'Print collateral was successfully created.' }
        format.json { render json: @print_collateral, status: :created, location: @print_collateral }
      else
        format.html { render action: "new" }
        format.json { render json: @print_collateral.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /print_collaterals/1
  # PUT /print_collaterals/1.json
  def update
    @print_collateral = PrintCollateral.find(params[:id])

    respond_to do |format|
      if @print_collateral.update_attributes(params[:print_collateral])
        format.html { redirect_to admin_dashboard_path, notice: 'Print collateral was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @print_collateral.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /print_collaterals/1
  # DELETE /print_collaterals/1.json
  def destroy
    @print_collateral = PrintCollateral.find(params[:id])
    @print_collateral.destroy

    respond_to do |format|
      format.html { redirect_to print_collaterals_url }
      format.json { head :no_content }
    end
  end
end
