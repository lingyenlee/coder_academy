Rails.application.routes.draw do
  # resources :movies
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   get "/movies", to: "movies#index", as: "movies"
# #autogenerate a method named movies_path
# get "movies/new", to: "movies#new", as: "new_movie"

# # create new movies
# post "/movies", to: "movies#create"

# patch "/movies/:id", to: "movies#update"
# put "/movies/:id", to: "movies#update"
#   get "/movies/:id", to: "movies#show", as: "movie"

#  delete "/movies/:id", to: "movies#destroy"
  
# #movie_path is autogenerated for the as
# get "/movies/:id/edit", to: "movies#edit", as: "edit_movie"

get "/sayhi/", to: "pages#sayhi"
# get "/students/:id", to: "students#show"

post "/students/:id", to: "students#update"

post "/pokemon/:name", to: "pokemon#show"

get "/redirectme", to: "pages#redirectme"
get "/redirectedto", to:"pages#redirectedto", as: "redirectedto"
#  get "/redirectfrom", to: "redirect#redirectfrom"
# get "/redirectfrom", to: "redirect#redirectfrom"
# get "/redirectedto", to: "redirect#redirectedto", as: "redirectedto" 



end