class SmartAsset
  module Adapters
    module Padrino
      
      def self.included(klass)
        if PADRINO_ENV && PADRINO_ROOT
          SmartAsset.env = PADRINO_ENV
          SmartAsset.load_config PADRINO_ROOT
        end
      end
    end
  end
end

Sinatra::Base.send(:include, SmartAsset::Helper)
