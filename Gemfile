source 'http://rubygems.org'

gem 'rails', '3.1.0.rc5'

gem 'sqlite3'

group :assets do
  gem 'sass-rails', "~> 3.1.0.rc"
  gem 'coffee-rails', "~> 3.1.0.rc"
  gem 'uglifier'
end

gem 'jquery-rails'
gem 'nifty-generators', :group => :development

group :development, :test do
  gem 'rspec-rails'
  gem 'webrat'
  gem 'factory_girl_rails', '>= 1.1.rc1'
  gem 'turn', :require => false
  gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i
  gem 'guard-rspec'
  gem 'growl'
  gem 'ruby-debug19', :require => 'ruby-debug'
end
