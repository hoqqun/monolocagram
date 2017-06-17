Rails.application.routes.draw do
  get 'comments/create'

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
  
  devise_for :users , controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }

  root 'top#index'

  get 'things/index'

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
