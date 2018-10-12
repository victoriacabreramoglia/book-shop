class Book < ApplicationRecord
  belongs_to :author, required: false

  has_many :sales
  has_many :users, through: :sales
end
