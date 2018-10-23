class Book < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id', required: false

  has_many :sales
  has_many :users, through: :sales


  def stripe_amount
    (self.price * 100).to_i
  end
end
