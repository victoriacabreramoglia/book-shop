class Admin::BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(param[:id])
  end

  def destroy
    Book.find(param[:id]).destroy!
  end


end