Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      post 'auth/register', to: 'users#register'
      post 'auth/login', to: 'users#login'

      resources :profiles, only: [:show, :update] do
        collection do
          get 'valid_username'
        end
      end

      resources :authors
      resources :book_categories
    end
  end
end
