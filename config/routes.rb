Rails.application.routes.draw do
  root             'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'signup'  => 'couriers#new'
  resources :couriers
end
