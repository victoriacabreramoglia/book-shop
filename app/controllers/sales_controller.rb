class SalesController < ApplicationController
  before_action :authenticate_user!
  def new
      @book = Book.find(params[:book_id])
  end

  def create
    book = Book.find(params[:book_id])
    stripe_token = params[:sale][:stripe_token]
    do_bad_thing = params[:sale][:do_bad_thing]
    sale_charge = StripeServices::CreateCharge.call(book, current_user, stripe_token)
    if do_bad_thing == "1"
      AdjustPriceByPopularityJob.perform_later
    end
    Sale.create user: current_user, book: book, stripe_charge_id: sale_charge.id, do_bad_thing: do_bad_thing
  end

  def index
    @sales = "duh"
  end

end
