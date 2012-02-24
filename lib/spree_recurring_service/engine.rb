#require '../spree_recurring_service_hooks.rb'

module SpreeRecurringService

  class Engine < Rails::Engine
    engine_name 'spree_recurring_service'

    config.autoload_paths += %W(#{config.root}/lib)
    #Recurly.api_key = '78256c8e627a4a829f5e3948f30012a2'
    #Recurly.api_key =Confiuration.first.api_ky
    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end

      Dir.glob(File.join(File.dirname(__FILE__), "../../app/overrides/*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
