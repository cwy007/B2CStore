source 'https://gems.ruby-china.com'
ruby "2.6.6"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.5'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'jquery-rails'
gem 'bootstrap-sass', '~> 3.3.7'
gem 'font-awesome-rails'
gem 'sorcery'
gem 'ancestry'
gem 'will_paginate', '~> 3.1.0'
# gem "paperclip", "~> 6.0.0"
# gem 'paperclip-qiniu', '~> 0.2.0'
gem 'carrierwave', '~> 1.0'
gem "mini_magick"
gem 'carrierwave-qiniu', '~> 1.1.5'
gem 'qiniu', '>= 6.9.0'
gem "rest-client"
gem "figaro"
gem 'faker'
gem 'awesome_rails_console', '~> 0.4.4'

group :development, :test do
  # Use mysql as the database for Active Record
  gem 'mysql2', '>= 0.3.18', '< 0.5'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'

  gem 'database_cleaner'
  gem 'rspec-rails', '~> 3.7'
  gem 'rails-controller-testing'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rails-erd'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :production do
  gem 'pg'
end

# Please clean up duplicated gems if any.
# Feel free to remove gems that you don't want to use or if they conflict with other gem dependencies. (you might need to update .pryrc also)
group :development, :test do
  gem 'hirb'
  gem 'hirb-unicode-steakknife', require: 'hirb-unicode'
  gem 'pry-stack_explorer'
  gem 'pry', '~> 0.12.2'
  gem 'pry-byebug', '~> 3.7'
end
