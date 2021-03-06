require 'aws-sdk'

module Launcher
  class Parameters < Hash
    # This class upon initialization will use any defined configuration parameters
    # that have been passed into the {Launcher::Config} class and are stored
    # in the :params key.
    class Options < Hash

      def initialize(key=:params)
        Launcher::Config[key].each { |k,v| self[k.to_sym] = v }
      rescue
      end

    end
  end
end
