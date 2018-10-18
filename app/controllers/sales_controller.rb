class SalesController < ApplicationController
  before_action :authenticate_user!
  def new
      @book = Book.find(params[:book_id])
  end

  def create
    book = Book.find(params[:book_id])
    stripe_token = params[:sale][:stripe_token]
    sale_charge = StripeServices::CreateCharge.call(book, current_user, stripe_token)
    Sale.create user: current_user, book: book, stripe_charge_id: sale_charge.id
  end

  def index
    @sales = "duh"
  end

end
