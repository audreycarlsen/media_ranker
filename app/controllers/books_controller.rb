class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy, :upvote]
  
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  def upvote
    @book.rank += 1
    @book.save
    redirect_to book_path(@book.id)
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :description, :rank)
  end

  def set_book
    @book = Book.find(params[:id])
  end

end