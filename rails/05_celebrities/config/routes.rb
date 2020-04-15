Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "celebrities#index", as: "index"
  get "/:name", to: "celebrities#show", as: "show"
  post "/add", to: "celebrities#create"
  put "/celebrity/:name", to: "celebrities#update"
  delete "/celebrity/:name", to: "celebrities#destroy"
end
