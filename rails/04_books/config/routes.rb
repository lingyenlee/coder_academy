Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get "/books", to: "books#index"
  get "/books/:id", to: "books#show"
  post "/books/new", to: "books#create"
  put "books/update", to: "books#update"
  delete "books/:id", to: "books#destroy"
end
