module Refinery
  module Timetables
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Timetables

      engine_name :refinery_timetables

      initializer "register refinerycms_timetables plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "timetables"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.timetables_admin_timetables_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/timetables/timetable',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Timetables)
      end
    end
  end
end
