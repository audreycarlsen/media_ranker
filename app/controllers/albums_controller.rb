class AlbumsController < ApplicationController
  
  def index
    @top_five_movies = Movie.top_five
  end
  
end
