Blog::Application.configure do
  # Settings specified here will take precedence over those in config/environment.rb

  # In the development environment your application's code is reloaded on
  # every request.  This slows down response time but is perfect for development
  # since you don't have to restart the webserver when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_view.debug_rjs             = true
  config.action_controller.perform_caching = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Email configuration
  config.action_mailer.raise_delivery_errors = true

  # Gmail SMTP server setup
  ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :enable_starttls_auto => true,
    :port => 587,
    :authentication => :plain,
    :user_name => "beginningrails@gmail.com",
    :password => 'pleasechange'
  }  
end
