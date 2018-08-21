Rails.application.routes.draw do
  devise_for :users

  root 'books#index'

  resources :post_images, only: [:new, :create, :index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get '/books' => 'books#index' , as: 'books'

get '/top' => 'books#top' , as:'top_book'

get '/users' => 'books#top'

post '/books' => 'books#create'

get '/books/:id' => 'books#show', as: 'book'

get '/books/:id/edit' => 'books#edit', as: 'edit_book'

patch '/books/:id' => 'books#update', as: 'update_book'

delete '/books/:id' => 'books#destroy', as: 'destroy_book'

end
