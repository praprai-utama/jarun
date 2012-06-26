module Refinery
  module Schedules
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Schedules

      engine_name :refinery_schedules

      initializer "register refinerycms_schedules plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "schedules"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.schedules_admin_schedules_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/schedules/schedule',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Schedules)
      end
    end
  end
end
