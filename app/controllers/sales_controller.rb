class SalesController < ApplicationController
  before_action :authenticate_user!
  def new
    if params.include?(:book)
      @book = params[:book]
    else
      redirect_to books_path
   end
  end

  def create
    Sale.create user: current_user, book: params[:book]
  end

end
