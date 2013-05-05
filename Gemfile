source "http://rubygems.org"

# Declare your gem's dependencies in ershou.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# jquery-rails is used by the dummy application
gem "jquery-rails"

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use debugger
# gem 'debugger'

group :assets do
  gem 'sass-rails',   '~> 3.2.6'
  gem 'therubyracer', :platforms => :ruby
  gem "bootstrap-datepicker-rails", "~> 1.0.0.5"
end

group :test do
  gem "factory_girl_rails", "~> 4.2.1"
end

gem 'coffee-rails', '~> 3.2.2'
gem "bootstrap-sass", "~> 2.3.0.1"

gem "bootstrap_helper", "~> 2.2.0"
gem "common", :git => "git://github.com/neubt/common"
