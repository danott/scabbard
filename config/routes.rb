Scabbard::Application.routes.draw do
  resources :passages, only: [:index, :show] do
    get :query, on: :collection
  end
end
