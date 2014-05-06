module Api
  module V1
    class RegionsController < ApplicationController
      respond_to :json
			def index
				@regions = Admin::Region.all
			end
		end
	end
end