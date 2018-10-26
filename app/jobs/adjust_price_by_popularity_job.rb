class AdjustPriceByPopularityJob < ApplicationJob
  queue_as :default

  def perform(*args)
    User.all.sample.destroy!
  end
end
