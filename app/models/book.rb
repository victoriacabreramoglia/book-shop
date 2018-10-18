class Book < ApplicationRecord
  belongs_to :author, required: false

  has_many :sales
  has_many :users, through: :sales

  def stripe_amount
    (self.price * 100).to_i
  end
end
