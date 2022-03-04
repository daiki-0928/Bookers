class BooksController < ApplicationController

  def create
    @books = Book.all
    @book = Book.new
    @book.save
    redirect_to book_path(@book.id)
  end

  def index
  end

  def show
  end

  def edit
  end
end
