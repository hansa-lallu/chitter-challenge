require 'simplecov'
require 'simplecov-console'
require 'capybara'
require 'rspec'
require "capybara/rspec"
require "sinatra/activerecord"
require_relative "../app/app"
require "features/web_helper_spec.rb"


SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

RSpec.configure do |config|
  config.after(:suite) do
    puts
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end

# ENV["ENVIRONMENT"] = "test"
ENV['RACK_ENV'] = 'test'
ENV['ENVIRONMENT'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app/app.rb')

Capybara.app = Chitter

Capybara.default_driver = :selenium
Capybara.server = :webrick

DB_ENV ||='test'
connection_details =YAML::load(File.open('./config/database.yml'))
ActiveRecord::Base.establish_connection(connection_details[DB_ENV])

RSpec.configure do |config|
  config.before(:each) do
    ActiveRecord::Base.connection.execute('DELETE FROM users;')
    ActiveRecord::Base.connection.execute('DELETE FROM messages;')
  end
  # rspec-expectations config goes here. You can use an alternate
  # assertion/expectation library such as wrong or the stdlib/minitest
  # assertions if you prefer.
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
