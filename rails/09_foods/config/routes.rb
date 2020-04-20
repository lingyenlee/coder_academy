Rails.application.routes.draw do
  # get 'foods/index'
  # get 'foods/show'
  # get 'foods/new'
  # get 'foods/edit'
  # get 'foods/delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :foods do
    member do
      get :delete
    end
  end

end
