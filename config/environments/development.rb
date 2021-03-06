##
## config/environments/development.rb
##
## Version 1
##
## 02/06/2016
##
## @reference Rails auto-generated code
## @author Ruth Stephenson - smtp settings for sendgrid
## @reference Tutorial on Devise
## @author Adriana Chis - modified to add action_mailer.default_url_options. As per tutorial on Devise

Rails.application.configure do

  config.action_mailer.default_url_options = { host: ENV['IP'], port: ENV['PORT'] }  ## @author Adriana Chis
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.perform_deliveries = true
##
## @author Ruth Stephenson  x15009335 (unused)
##

  config.action_mailer.smtp_settings = {
  address: 'smtp.gmail.com',
  port: 587,
  domain: ENV['GMAIL_DOMAIN'],
  authentication: 'plain',
  enable_starttls_auto: true,
  user_name: ENV['angeltarotcarrick@gmail.com'],
  password: ENV['angeltarot']
  }

  #set up email server!
  #ActionMailer::Base.delivery_method = :smtp
  #ActionMailer::Base.smtp_settings = {
  
  
  #config.action_mailer.delivery_method = :smtp
  #config.action_mailer.smtp_settings = {
  #address:              'smtp.gmail.com',
  #port:                 587,
  #port:                  2587,
  #domain:               'gmail.com',
  #user_name:            ENV['angeltarotcarrick@gmail.com'],
  #password:             ENV['angeltarot'],
  #authentication:       'plain',
  #enable_starttls_auto: true  }
  
#  config.action_mailer.default_url_options = {host: "https://angeltarotcarrick.herokuapp.com/"}
#  config.action_mailer.delivery = :smtp
#  ActionMailer::Base.smtp_settings = {
#  :address        => 'smtp.sendgrid.net',
#  :port           => '587',
#  :authentication => :plain,
#  :user_name      => ENV['SENDGRID_USERNAME'],
#  :password       => ENV['SENDGRID_PASSWORD'],
#  :domain         => 'heroku.com',
#  :enable_starttls_auto => true
#}


  #set the CONTACT_RECIPIENT email Address-Wherever I want the email to go
  #CONTACT_RECIPIENT = "angeltarotcarrick@gmail.com"

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
 

end
