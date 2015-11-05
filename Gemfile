source 'https://rubygems.org'
ruby '2.2.3'

gem 'rails', '4.2.4'

gem 'rails-api'

gem 'rails_12factor', group: :production

gem 'pg'

gem 'puma'

gem "acts_as_follower"

gem 'active_model_serializers', '~> 0.10.0.rc3'

gem 'rspec-rails'

gem 'bcrypt', '~> 3.1.7'

gem 'doorkeeper'

gem 'pundit'

gem 'rack-cors', require: 'rack/cors'
group :development do
  gem 'pry'
  gem 'foreman'
  gem 'rails-erd'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'guard-rspec', require: false

end
group :test, :development do
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'rspec-rails'
  gem 'codeclimate-test-reporter', require: nil
  gem 'database_cleaner'
end


