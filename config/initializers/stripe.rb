require "stripe"
Stripe.api_key = LeBookShoppe::Application.credentials.stripe[:secret_key]