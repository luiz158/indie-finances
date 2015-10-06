Finances::Engine.routes.draw do
  resources :dres
  resources :entries
  resources :reports

  get "current" => "reports#current"
end
