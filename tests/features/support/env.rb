require'rspec/expectations'
require 'page-object'
require 'require_all'
require 'faker'
require_relative 'models/user'
require_all 'lib'
require 'json'
World(PageObject::PageFactory)
World(RSpec::Matchers) #to make rspec matchers work
World(Faker)
