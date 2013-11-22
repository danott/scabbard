Scabbard::Application.routes.draw do
  get "(*redirect_path)", to: "batman#index", constraints: lambda { |request| request.format == "text/html" }

  resources :passages, only: [:index, :show] do
    get :query, on: :collection
  end
end
