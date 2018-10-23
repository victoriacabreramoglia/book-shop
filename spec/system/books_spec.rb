require "rails_helper"
# Type describes the type of feature being tested--reference the docs
RSpec.describe "Books", type: :system do
  before do
    driven_by(:rack_test)
  end
  it "has an index page of all books" do
    first_book = create(:book)
    second_book = create(:book)

    visit "/books"

    expect(page).to have_text(first_book.title)
    expect(page).to have_text(second_book.title)
  end
end