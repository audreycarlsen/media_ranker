MediaRanker::Application.routes.draw do

  root   'welcome#index'

  get    '/movies'            => 'movies#index',   as: 'movies'
  get    '/movies/new'        => 'movies#new',     as: 'new_movie'
  post   '/movies'            => 'movies#create'
  get    '/movies/:id'        => 'movies#show',    as: 'movie'
  get    '/movies/:id/edit'   => 'movies#edit',    as: 'edit_movie'
  patch  '/movies/:id'        => 'movies#update'
  delete '/movies/:id'        => 'movies#destroy', as: 'delete_movie'
  patch  '/movies/upvote/:id' => 'movies#upvote',  as: 'upvote_movie'

  get    '/books'            => 'books#index',   as: 'books'
  get    '/books/new'        => 'books#new',     as: 'new_book'
  post   '/books'            => 'books#create'
  get    '/books/:id'        => 'books#show',    as: 'book'
  get    '/books/:id/edit'   => 'books#edit',    as: 'edit_book'
  patch  '/books/:id'        => 'books#update'
  delete '/books/:id'        => 'books#destroy', as: 'delete_book'
  patch  '/books/upvote/:id' => 'books#upvote',  as: 'upvote_book'

end