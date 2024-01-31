Rails.application.routes.draw do
  get 'splash/index'

  # Defines the root path route ("/")
  devise_scope :user do
    authenticated :user do
      root 'groups#index', as: :authenticated_root
    end
    unauthenticated { root 'splash#index', as: :unauthenticated_root }
  end

  devise_for :users, controllers: { registrations: 'registrations' }

  resources :splash, only:[:index]
  resources :users, only: [:show, :income, :update, :destroy]
  resources :groups, only: [:index ,:show, :new, :create,  :destroy] do
    resources :entities, only: [:index, :show, :new, :create, :destroy]
  end
end
