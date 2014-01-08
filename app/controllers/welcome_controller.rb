class WelcomeController < ApplicationController
  
  def index
    @top_five_movies = Movie.order(:rank).reverse.take(5)
    @top_five_books  = Book.order(:rank).reverse.take(5)
    @top_five_albums = Album.order(:rank).reverse.take(5)
  end
  
end
