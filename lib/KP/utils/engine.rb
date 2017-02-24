require 'rails/engine'

module KP::Utils
  class Engine < ::Rails::Engine
    engine_name 'kp_utils'

    config.autoload_paths += [
      config.root.join('lib/KP/utils/tasks')
    ]
  end
end
