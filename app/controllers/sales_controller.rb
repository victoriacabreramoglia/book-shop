class SalesController < ApplicationController
  before_action :authenticate_user!
  def new
      @book = Book.find(params[:book_id])
  end

  def create
    stripe_token = params[:stripe_token]
    sale_charge = StripeServices::CreateCharge.call(params[:book], params[:user], stripe_token)
    Sale.create user: current_user, book: params[:book], stripe_charge_id: sale_charge.id
  end

  def index
    @sales = "duh"
  end

end
