class Admin::FeaturesController < ApplicationController
  before_action :set_admin_feature, only: [:show, :edit, :update, :destroy]

  # GET /admin/features
  # GET /admin/features.json
  def index
    @admin_features = Admin::Feature.all
  end

  # GET /admin/features/1
  # GET /admin/features/1.json
  def show
  end

  # GET /admin/features/new
  def new
    @admin_feature = Admin::Feature.new
  end

  # GET /admin/features/1/edit
  def edit
  end

  # POST /admin/features
  # POST /admin/features.json
  def create
    @admin_feature = Admin::Feature.new(admin_feature_params)

    respond_to do |format|
      if @admin_feature.save
        format.html { redirect_to @admin_feature, notice: 'Feature was successfully created.' }
        format.json { render :show, status: :created, location: @admin_feature }
      else
        format.html { render :new }
        format.json { render json: @admin_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/features/1
  # PATCH/PUT /admin/features/1.json
  def update
    respond_to do |format|
      if @admin_feature.update(admin_feature_params)
        format.html { redirect_to @admin_feature, notice: 'Feature was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_feature }
      else
        format.html { render :edit }
        format.json { render json: @admin_feature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/features/1
  # DELETE /admin/features/1.json
  def destroy
    @admin_feature.destroy
    respond_to do |format|
      format.html { redirect_to admin_features_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_feature
      @admin_feature = Admin::Feature.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_feature_params
      params.require(:admin_feature).permit(:name)
    end
end
