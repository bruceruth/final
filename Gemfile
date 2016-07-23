## config/routes.rb
##
## Version 1
##
## 02/06/2016
##
## @reference Rails auto-generated code
## @author Ruth Stephenson, x15009335
## @reference Tutorial on Devise, @author Adriana Chis
## @reference Tutorial on Design Patterns, @author Adriana Chis

##


source 'https://rubygems.org'

gem 'sass-rails'
gem 'bootstrap-sass' #install bootstrap to change front end appearance
gem 'therubyracer'
gem 'less', '~> 2.6'
#add the gem to use observer pattern:

##
## @reference Tutorial on Design Patterns, @author Adriana Chis
##
gem 'rails-observers'

##
## @reference Tutorial on Devise, @author Adriana Chis
##
gem 'devise'
gem 'mail'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5.1'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  
end

##
## @reference Tutorial on Deploying To Heroku, @author Adriana Chis
##
group :production do 
  gem 'pg'
  gem 'rails_12factor'
end


##
## @reference Tutorial on Deploying To Heroku, @author Adriana Chis
##
# Use sqlite3 as the database for Active Record - modified for deployment to Heroku
group :development do
  gem 'sqlite3'
end
   

group :test do
  gem 'rails-controller-testing'
  gem 'minitest-reporters'
end
