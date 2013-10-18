Scabbard::Application.routes.draw do
  resources :references, only: [:index, :show] do
    get :lookup, on: :collection
  end

  get "(*redirect_path)", to: "batman#index", constraints: lambda { |request| request.format == "text/html" }
end
