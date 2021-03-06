require "rspec/core"
require "factory_girl/syntax/methods"

RSpec.configure do |config|
  config.include FactoryGirl::Preload::Helpers
  config.include FactoryGirl::Syntax::Methods

  config.before(:suite) do
    FactoryGirl::Preload.clean
    FactoryGirl::Preload.run
  end

  config.before(:each) do
    FactoryGirl::Preload.reload_factories
  end
end
