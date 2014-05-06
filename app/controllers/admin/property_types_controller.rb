class Admin::PropertyTypesController < ApplicationController
  before_action :set_admin_property_type, only: [:show, :edit, :update, :destroy]

  # GET /admin/property_types
  # GET /admin/property_types.json
  def index
    @admin_property_types = Admin::PropertyType.all
  end

  # GET /admin/property_types/1
  # GET /admin/property_types/1.json
  def show
  end

  # GET /admin/property_types/new
  def new
    @admin_property_type = Admin::PropertyType.new
  end

  # GET /admin/property_types/1/edit
  def edit
  end

  # POST /admin/property_types
  # POST /admin/property_types.json
  def create
    @admin_property_type = Admin::PropertyType.new(admin_property_type_params)

    respond_to do |format|
      if @admin_property_type.save
        format.html { redirect_to @admin_property_type, notice: 'Property type was successfully created.' }
        format.json { render :show, status: :created, location: @admin_property_type }
      else
        format.html { render :new }
        format.json { render json: @admin_property_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/property_types/1
  # PATCH/PUT /admin/property_types/1.json
  def update
    respond_to do |format|
      if @admin_property_type.update(admin_property_type_params)
        format.html { redirect_to @admin_property_type, notice: 'Property type was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_property_type }
      else
        format.html { render :edit }
        format.json { render json: @admin_property_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/property_types/1
  # DELETE /admin/property_types/1.json
  def destroy
    @admin_property_type.destroy
    respond_to do |format|
      format.html { redirect_to admin_property_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_property_type
      @admin_property_type = Admin::PropertyType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_property_type_params
      params.require(:admin_property_type).permit(:name)
    end
end
