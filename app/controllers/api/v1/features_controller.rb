module Api
  module V1
    class FeaturesController < ApplicationController
      respond_to :json
			def index
				@features = Admin::Feature.all
			end
		end
	end
end