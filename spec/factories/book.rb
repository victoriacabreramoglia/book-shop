FactoryBot.define do
  factory :book do
    title "The Hate U Give"
    price 79.99
    author {create :author}
  end
end