# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# To configure email
# Though, in routes.rb it starts with:
# "Rails.application.routes.draw do"
# This may be a rails 4.0 vs. 4.2 thing
# where the book shows Depot::
# So should this be Rails.application.configure?

# Book says:
# Depot::Application.configure do
#   config.action_mailer.delivery_method = :test
# end

# So, there is a possibility it should be: 

Rails.application.configure do
  config.action_mailer.delivery_method = :test
end
# See: 
# http://stackoverflow.com/questions/20071022/rails-email-with-gmail-smtp-error-errnoeconnrefused-no-connection-could-be
