class Admin::PlotsController < ApplicationController
  before_action :set_admin_plot, only: [:show, :edit, :update, :destroy]

  # GET /admin/plots
  # GET /admin/plots.json
  def index
    @admin_plots = Admin::Plot.all
  end

  # GET /admin/plots/1
  # GET /admin/plots/1.json
  def show
  end

  # GET /admin/plots/new
  def new
    @admin_plot = Admin::Plot.new
  end

  # GET /admin/plots/1/edit
  def edit
  end

  # POST /admin/plots
  # POST /admin/plots.json
  def create
    @admin_plot = Admin::Plot.new(admin_plot_params)

    respond_to do |format|
      if @admin_plot.save
        format.html { redirect_to @admin_plot, notice: 'Plot was successfully created.' }
        format.json { render :show, status: :created, location: @admin_plot }
      else
        format.html { render :new }
        format.json { render json: @admin_plot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/plots/1
  # PATCH/PUT /admin/plots/1.json
  def update
    respond_to do |format|
      if @admin_plot.update(admin_plot_params)
        format.html { redirect_to @admin_plot, notice: 'Plot was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_plot }
      else
        format.html { render :edit }
        format.json { render json: @admin_plot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/plots/1
  # DELETE /admin/plots/1.json
  def destroy
    @admin_plot.destroy
    respond_to do |format|
      format.html { redirect_to admin_plots_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_plot
      @admin_plot = Admin::Plot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_plot_params
      params.require(:admin_plot).permit(:title, :price, :features_id, :property_types_id, :regions_id, :address1, :address2, :town, :postcode)
    end
end
