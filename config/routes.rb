Rails.application.routes.draw do


  root 'home#index'

  devise_for :users, controllers: { registrations: "registrations" }



  resources :items do
    resources :charges, only:[:new,:create]
  end
  resource :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
