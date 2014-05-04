require 'api_constraints'

Rails.application.routes.draw do



  namespace :api, defaults: {format: 'json'} do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do      
      resources :regions
    end
  end

  namespace :admin do
    resources :regions
    resources :users
  end

  root 'admin/regions#index'
end
