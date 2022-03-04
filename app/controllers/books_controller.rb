class BooksController < ApplicationController

  def create
    @book = Book.all
    @book = Book.new
    @book.save
    redirect_to book_path(@book.id)
  end

  def index
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
