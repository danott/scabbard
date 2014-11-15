Scabbard::Application.routes.draw do
  resources :passages

  resources :passages, except: [:edit]
  resource :cache, controller: "cache_manifests", constraints: { format: 'manifest' }
end
