require 'api_constraints'

Rails.application.routes.draw do


  namespace :admin do
    resources :plots
  end

  namespace :api, defaults: {format: 'json'} do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do      
      resources :regions
      resources :features
      resources :property_types
    end
  end

  namespace :admin do
    resources :regions
    resources :features
    resources :property_types
    resources :users

  end

  root 'admin/regions#index'
end
