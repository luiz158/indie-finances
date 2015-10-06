Finances::Engine.routes.draw do
    resources :dres
    resources :entries
    get "reports" => "reports#show"
end
