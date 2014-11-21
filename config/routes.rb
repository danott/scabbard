Scabbard::Application.routes.draw do
  resource :cache,
           controller: "cache_manifests",
           only: [:show],
           constraints: { format: "manifest" }
  resource :person, only: [:new, :create, :edit, :update, :destroy]
  resource :session, only: [:new, :create, :destroy]
  resources :passages, except: [:edit]
end
