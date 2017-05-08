Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "stories#index"
resources :stories do
resources :characters
end
  get "stories/:id/guess", to: "stories#guess"
end
