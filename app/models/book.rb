class Book < ActiveRecord::Base

  def self.top_five
    sorted_books = all.sort_by { |book| book.rank }
    sorted_books.reverse.take(5)
  end

end