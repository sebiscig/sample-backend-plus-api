Rails.application.routes.draw do
  resources :pages
  resources :contacts
  resources :publication_types
  resources :publications
  namespace :api do
    get '/pages', to: 'pages#index'
    get '/pages/:id', to: 'pages#show'
    get '/contacts', to: 'contacts#index'
    get '/publications', to: 'publications#index'
  end
end
