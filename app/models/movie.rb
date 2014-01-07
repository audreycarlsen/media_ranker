class Movie < ActiveRecord::Base

  def self.top_five
    sorted_movies = all.sort_by { |movie| movie.rank }
    sorted_movies.reverse.take(5)
  end

end