Scabbard::Application.routes.draw do
  get "(*redirect_path)", to: "batman#index", constraints: lambda { |request| request.format == "text/html" }

  resources :references, only: [:index, :show] do
    get :lookup, on: :collection
  end
end
