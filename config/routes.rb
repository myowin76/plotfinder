require 'api_constraints'

Rails.application.routes.draw do


  namespace :api, defaults: {format: 'json'} do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do      

      resources :plots
      resources :regions
      resources :features
      resources :property_types
    end
  end

  namespace :admin do
    resources :plots
    resources :regions
    resources :features
    resources :property_types
    resources :users

  end

  root 'admin/regions#index'
end
