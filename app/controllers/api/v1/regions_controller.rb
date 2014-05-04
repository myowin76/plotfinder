module Api
  module V1
    class RegionsController < ApplicationController
      respond_to :json
			def index
				@admin_regions = Admin::Region.all
			  # respond_with Admin::Region.all
			end

			def show
			  respond_with Admin::Region.find(params[:id])
			end

			def create
			  respond_with Admin::Region.create(params[:region])
			end

			def update
			  respond_with Admin::Region.update(params[:id], params[:regions])
			end

			def destroy
			  respond_with Admin::Region.destroy(params[:id])
			end
		end
	end
end