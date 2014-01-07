class Movie < ActiveRecord::Base

  def ranked_in_order
    Movie.all.sort_by { |movie| rank }
  end
end