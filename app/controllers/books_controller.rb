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
      if params[:book][:upvote]
        redirect_to :back
      else
        redirect_to book_path(@book.id)
      end
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :description, :upvote)
  end

  def set_book
    @book = Book.find(params[:id])
  end

end