source 'http://rubygems.org'

gem 'rails', '3.1.1'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

group :development, :test do
	gem 'sqlite3'
	gem 'rspec-rails'
  gem 'pry-rails'
end

group :production do
	gem 'pg'
	gem 'unicorn'
end

group :test do
  gem 'capybara'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'shoulda'
  gem "lorem-ipsum"
  gem "launchy"
  gem "spork-rails"
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
	gem 'coffee-rails', '~> 3.1.1'
	gem 'less-rails'
	gem 'less-rails-bootstrap'
	gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# for static pages
gem 'high_voltage'
# markdown parser
gem 'redcarpet'

# internationalize Active Records
gem 'globalize3', :git => "git://github.com/svenfuchs/globalize3.git"

# memcache
gem 'dalli'
# better fragment caching
gem 'cache_digests'

#better console results viewing
gem 'hirb'

#authorization and permissions system
gem 'cancan'

#authentification system
gem 'authlogic'

# file management
gem "paperclip", "~> 3.1.3"