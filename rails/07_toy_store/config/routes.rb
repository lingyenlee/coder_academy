Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "toys#index"
  get "/toy/:Id", to: "toys#show"  

end
