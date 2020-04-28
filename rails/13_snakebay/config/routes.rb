Rails.application.routes.draw do
  devise_for :users
  # send users to homepage when they logout
  get "/", to: "pages#home", as: "root"

  get "/listings/:id/delete", to: "listings#delete", as: "delete_listing"
  get "/listings", to: "listings#index", as: "listings"
  post "/listings", to: "listings#create"
  get "/listings/new", to: "listings#new", as: "new_listing"
  get "/listings/:id/edit", to: "listings#edit", as: "edit_listing"
  get "/listings/:id", to: "listings#show", as: "listing"
  put "/listings/:id", to: "listings#update"
  patch "/listings/:id", to: "listings#update"
  delete "/listings/:id", to: "listings#destroy"
 

  # get "*path", to: "pages#not_found"
end
