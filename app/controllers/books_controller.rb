class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def create
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 

  def book_params
    params.require(:book).permit(:title, :author, :genre)
  end
end
