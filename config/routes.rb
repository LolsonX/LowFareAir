Rails.application.routes.draw do

  resources :flights, only: :index
  resources :flight_availabilities, only: :index
  resources :flight_histories, only: [:index, :new, :create]

  root to: 'flights#index'
  devise_for :users

  match "bad-request", to: "errors#bad_request", as: "bad_request", via: :all
  match "not_authorized", to: "errors#not_authorized", as: "not_authorized", via: :all
  match "route-not-found", to: "errors#route_not_found", as: "route_not_found", via: :all
  match "resource-not-found", to: "errors#resource_not_found", as: "resource_not_found", via: :all
  match "missing-template", to: "errors#missing_template", as: "missing_template", via: :all
  match "not-acceptable", to: "errors#not_acceptable", as: "not_acceptable", via: :all
  match "unknown-error", to: "errors#unknown_error", as: "unknown_error", via: :all
  match "service-unavailable", to: "errors#service_unavailable", as: "service_unavailable", via: :all

  match '/400', to: 'errors#bad_request', via: :all
  match '/401', to: 'errors#not_authorized', via: :all
  match '/403', to: 'errors#not_authorized', via: :all
  match '/404', to: 'errors#resource_not_found', via: :all
  match '/406', to: 'errors#not_acceptable', via: :all
  match '/422', to: 'errors#not_acceptable', via: :all
  match '/500', to: 'errors#unknown_error', via: :all


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
