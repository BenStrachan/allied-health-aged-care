source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Ben's installed gems
gem 'bootstrap', '~> 4.0.0.beta2.1'
gem 'sprockets-rails', :require => 'sprockets/railtie'
gem 'jquery-rails'
gem 'simple_form'
gem 'devise'
gem 'devise_invitable'
gem "cancan"
gem 'kaminari'
gem 'pg', '~> 0.18.4'
gem 'rails', '~> 5.1.4'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'font-awesome-sass', '~> 4.7.0'
gem 'momentjs-rails', '>= 2.9.0'
gem 'bootstrap-datepicker-rails', '~> 1.7', '>= 1.7.1.1'
gem 'will_paginate', '~> 3.1.0'
gem "paranoia", "~> 2.2"
gem 'bootstrap-wysihtml5-rails'
gem 'ckeditor'
gem 'local_time'

gem 'wicked_pdf'
gem 'wkhtmltopdf-binary',       group: [:development]
gem 'wkhtmltopdf-binary-edge',  group: [:production, :staging]

gem "paperclip", "~> 5.2.1"
gem 'aws-sdk', '~> 2.3'
gem 'simple-form-datepicker'
gem 'ransack'
gem 'country_select'


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'rails_12factor', group: :production

# 19/sep/2018
# fullcalender gem
gem 'fullcalendar-rails'
gem 'jquery-ui-rails'
