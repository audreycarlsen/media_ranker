MediaRanker::Application.routes.draw do

  get    '/movies'          => 'movies#index'
  get    '/movies/new'      => 'movies#new'
  post   '/movies'          => 'movies#create'
  get    '/movies/:id'      => 'movies#show', as: 'movie'
  get    '/photos/:id/edit' => 'movies#edit', as: 'edit_movie'
  patch  '/movies/:id'      => 'movies#update'
  delete 'movies/:id'       => 'movies#destroy'

end
