require 'KP/utils/version'
require 'KP/utils/engine'

module KP
  module Utils

    mattr_accessor :github
    
    class << self

      def configure
        yield self
      end

    end

  end
end
