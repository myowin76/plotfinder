module Api
  module V1
  	class SessionsController < ApplicationController
  		
  		def new
  					
  		end		

  		def create
  			user = User.find_by_username_or_email(params[:login_input])
    
		    return failure unless user && user.authenticate(params[:password])
				
				
  		end

  		def destroy
  			
  		end

  		def failure
  			render :json => { :errors => ["Invalid email or password."] },  :success => false, :status => :unauthorized			
  		end
  	end
  end
end