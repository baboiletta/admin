Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :posts
      resources :categories

      root to: "users#index"
    end
  devise_for :users, :controllers => {:registrations => "registrations"}
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
    get 'login', to: 'devise/sessions#new'
    # get '/users/sign_out', to: 'devise/sessions#destroy'

  end
  resources :posts do
    collection do
      get 'describes'
    end
  end

  resources :pages
  root to: 'pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :categories
end
