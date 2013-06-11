module Twomonths
  class App < Padrino::Application
    register SassInitializer
    use ActiveRecord::ConnectionAdapters::ConnectionManagement
    register Padrino::Rendering
    register Padrino::Mailer
    register Padrino::Helpers

    enable :sessions

    ##
    # Caching support
    #
    register Padrino::Cache
    enable :caching
    set :cache, Padrino::Cache::Store::Memory.new(100)

    OmniAuth.config.logger = logger
    use OmniAuth::Builder do
      provider :identity, :fields => [:username]
    end
  end
end

module OmniAuth
  module Strategies
    class Identity
      def request_phase
        redirect '/login'
      end
    end
  end
end
