Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/movies", to: "movies#index", as: "movies"
  get "/movies/new", to: "movies#new", as: "new_movie"
  get "/movies/:id/edit", to: "movies#edit", as: "edit_movie"
  get "/movies/:id/delete", to: "movies#delete", as: "delete_movie"
  put "/movies/:id", to: "movies#update"
  get "/movies/:id", to: "movies#show", as: "movie"
  post "/movies", to: "movies#create"
  delete "/movies/:id", to: "movies#destroy"
  
end
