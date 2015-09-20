Rails.application.routes.draw do

  mount Finances::Engine => "/finances"

  resources :clients
end
