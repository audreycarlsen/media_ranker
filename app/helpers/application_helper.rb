module ApplicationHelper
  def top_five_movies
    Movie.top_five
  end
end
