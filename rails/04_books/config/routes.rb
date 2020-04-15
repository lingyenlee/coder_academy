Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get "/books", to: "books#index"
  get "/books/:id", to: "books#show"
  post "/books/new", to: "books#create"
  put "/books/:id", to: "books#update"
  
  # get "/", to: "pages#index", as: "index"
  # get "/about", to: "pages#about", as: "about"
  
  get "/products", to: "products#index"

  get "/", to: "examples#home", as: "home"
  get "/about", to: "examples#about", as: "about"


  
end
