Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :orders, only: [:create, :index, :update]
      resources :flavors, only: :index
      resources :customers, only: :index
      resources :flavor_orders, only: []
    end
  end
end
