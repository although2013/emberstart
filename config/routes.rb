EmberStart::Application.routes.draw do
  root to: 'home#index'

  namespace :api do
    namespace :v1 do
      resources :customers
    end
  end

  get '*path', to: 'home#index'
end
