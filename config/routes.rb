Rails.application.routes.draw do

  get 'messages/index'

  get 'messages/create'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :pictures do
    collection do
      post :confirm
    end
  end

  resources :topics do
    resources :comments
    collection do
      post :confirm
    end
  end
  
  resources :conversations do
    resources :messages
  end

  devise_for :users , controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  
  resources :users, only: [:index]

  resources :relationships, only: [:create, :destroy]

  root 'top#index'

  get 'things/index'
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
