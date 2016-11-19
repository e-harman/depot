# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# To configure email
# Though, in routes.rb it starts with:
# "Rails.application.routes.draw do"
# where the book shows Depot::
# So should this be Rails.application.configure?
# This may be a rails 4.0 vs. 4.2 thing

Depot::Application.configure do
  config.action_mailer.delivery_method = :test
end