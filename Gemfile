source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.1'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.3.18', '< 0.5'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# https://github.com/plataformatec/devise
gem 'devise'
# https://github.com/ctran/annotate_models
gem 'annotate'
# https://github.com/CanCanCommunity/cancancan
gem 'cancancan', '~> 1.10'
# https://github.com/kaminari/kaminari
gem 'kaminari'
# https://github.com/carrierwaveuploader/carrierwave
gem 'carrierwave', '~> 1.0'
# https://github.com/huobazi/carrierwave-qiniu
# gem 'carrierwave-qiniu', '~> 1.1.0'
# https://github.com/mime-types/ruby-mime-types/
# gem 'mime-types'
# https://github.com/vmg/redcarpet
gem 'redcarpet'
# https://github.com/rubychan/coderay
gem 'coderay'
# https://github.com/petergoldstein/dalli
gem 'dalli'
# https://github.com/swanandp/acts_as_list
gem 'acts_as_list'
# https://github.com/ledermann/rails-settings
# gem 'ledermann-rails-settings'
# https://github.com/FooBarWidget/default_value_for
gem 'default_value_for'
# https://github.com/twbs/bootstrap-sass
gem 'bootstrap-sass', '~> 3.3.6'
# https://github.com/slim-template/slim-rails
gem "slim-rails"
# https://github.com/plataformatec/simple_form
gem 'simple_form'
# https://github.com/laserlemon/figaro
gem "figaro"
gem 'haml'
gem 'rmagick'
gem 'rails-settings-cached', '~> 0.6.5' # will be removed
gem 'jquery-rails'

# https://github.com/mina-deploy/mina
gem 'mina', require: false
gem 'mina-unicorn', require: false
# https://github.com/sandelius/mina-puma
# gem 'mina-puma', require: false

gem 'unicorn', group: [:production]
