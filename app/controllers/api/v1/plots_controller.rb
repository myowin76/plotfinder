module Api
  module V1
    class PlotsController < ApplicationController
      respond_to :json
			def index
				@plots = Admin::Plot.all
			end

			def show
        @plot = Admin::Plot.find(params[:id])
      end
		end
	end
end