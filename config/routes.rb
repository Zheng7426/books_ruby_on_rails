Rails.application.routes.draw do
  root 'books#index'
    #get '/books/:title' => 'books#show'
    resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
