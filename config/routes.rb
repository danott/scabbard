Scabbard::Application.routes.draw do
  resource :person, only: %i(new create edit update destroy)
  resources :passages, only: %i(index new create show update destroy)

  get "sign-in", to: "sessions#new", as: "sign_in"
  post "sign-in", to: "sessions#create"
  get "sign-out", to: "sessions#destroy", as: "sign_out"

  root "landings#index"
end
