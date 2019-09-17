# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => ENV.fetch('MAILGUN_USERNAME'),
  :password => ENV.fetch('MAILGUN_PASSWORD'),
  :domain => 'yourdomain.com',
  :address => 'smtp.mailgun.org',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
