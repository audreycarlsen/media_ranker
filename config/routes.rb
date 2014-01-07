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

end