source 'http://rubygems.org'

gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook'

# KIMADA 2/12/2013
gem 'haml'
#group :development, :test do 
#	gem 'ruby-debug19'
#end
# gem install ruby-debug-base19x -v 0.11.29
group :production do 
	gem 'therubyracer-heroku', :platform => :ruby
	gem 'pg'
end 

group :test, :development do
	#gem 'cucumber-rails'
	gem 'cucumber-rails-training-wheels'
	gem 'database_cleaner'
	gem 'capybara'
	gem 'launchy'
	gem "rspec-rails", "~> 2.0" #MOD KIMADA 3/19/2013
	gem 'ZenTest' # MOD KIMADA 3/19/2013
	gem 'sqlite3'
end 

group :test do
	gem 'cucumber-rails'
end
# END KIMADA

gem 'rails', '3.2.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
