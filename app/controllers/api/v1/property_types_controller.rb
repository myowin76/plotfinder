module Api
  module V1
    class PropertyTypesController < ApplicationController
      respond_to :json
			def index
				@property_types = Admin::PropertyType.all
			end
		end
	end
end