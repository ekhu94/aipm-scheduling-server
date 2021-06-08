Rails.application.routes.draw do
  resources :work_orders
  resources :locations
  resources :technicians
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
