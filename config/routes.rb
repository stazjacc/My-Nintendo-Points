Rails.application.routes.draw do
  resources :my_nintendo_points
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_scope :user do
    authenticated :user do
      root :to => 'my_nintendo_points#index'
    end
    unauthenticated :user do
      root :to => 'devise/sessions#new', as: :unauthenticated_root
    end
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
