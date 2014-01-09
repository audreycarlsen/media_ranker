MediaRanker::Application.routes.draw do

  root   'welcome#index'

  get    '/movies'            => 'movies#index',   as: 'movies'
  get    '/movies/new'        => 'movies#new',     as: 'new_movie'
  post   '/movies'            => 'movies#create'
  get    '/movies/:id'        => 'movies#show',    as: 'movie'
  get    '/movies/:id/edit'   => 'movies#edit',    as: 'edit_movie'
  patch  '/movies/:id'        => 'movies#update'
  delete '/movies/:id'        => 'movies#destroy', as: 'delete_movie'

  get    '/books'            => 'books#index',   as: 'books'
  get    '/books/new'        => 'books#new',     as: 'new_book'
  post   '/books'            => 'books#create'
  get    '/books/:id'        => 'books#show',    as: 'book'
  get    '/books/:id/edit'   => 'books#edit',    as: 'edit_book'
  patch  '/books/:id'        => 'books#update'
  delete '/books/:id'        => 'books#destroy', as: 'delete_book'

  get    '/albums'            => 'albums#index',   as: 'albums'
  get    '/albums/new'        => 'albums#new',     as: 'new_album'
  post   '/albums'            => 'albums#create'
  get    '/albums/:id'        => 'albums#show',    as: 'album'
  get    '/albums/:id/edit'   => 'albums#edit',    as: 'edit_album'
  patch  '/albums/:id'        => 'albums#update'
  delete '/albums/:id'        => 'albums#destroy', as: 'delete_album'

end