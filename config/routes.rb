Rails.application.routes.draw do
resources :rooms 
root 'pages#home'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_scope :user do 
    get 'users', to:  'devise/sessions#new'
  end 
end
