$:.unshift File.expand_path('..', __FILE__)
$:.unshift File.expand_path('../../lib', __FILE__)

require 'rspec'
require 'namba'
require 'coveralls'

Coveralls.wear!

RSpec.configure do |config|
end
