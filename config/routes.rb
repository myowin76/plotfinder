require 'api_constraints'

Rails.application.routes.draw do

  # namespace :api do
  #   namespace :v1 do
  #     resources :users    
  #   end
  # end

  namespace :api, defaults: {format: 'json'} do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      
      resources :users
    end
  end

  # root 'welcome#index'
end
