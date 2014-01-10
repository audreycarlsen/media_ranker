class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movie_path(@movie.id)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @movie.update(movie_params)
      if params[:movie][:upvote]
        redirect_to :back
      else
        redirect_to movie_path(@movie.id)
      end
    else
      render :edit
    end
  end

  def destroy
    @movie.destroy
    redirect_to :back
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :director, :synopsis, :upvote)
  end

end