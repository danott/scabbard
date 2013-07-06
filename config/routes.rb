Scabbard::Application.routes.draw do
  resources :references, only: [:index, :show] do
    get :lookup, on: :collection
  end

  root 'ember#index'
end
