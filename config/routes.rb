Scabbard::Application.routes.draw do
  resource :cache,
           controller: "cache_manifests",
           only: [:show],
           constraints: { format: "manifest" }
  resource :person, only: [:new, :create, :edit, :update, :destroy]
  resources :passages, except: [:edit]

  get "sign-in", to: "sessions#new", as: "sign_in"
  post "sign-in", to: "sessions#create"
  get "sign-out", to: "sessions#destroy", as: "sign_out"
end
