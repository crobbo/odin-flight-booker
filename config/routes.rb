Rails.application.routes.draw do
  get 'flights/index'
  get 'flights/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :flights
  resources :bookings
  root 'flights#index'
  get "/:page" => "pages#show"
end
