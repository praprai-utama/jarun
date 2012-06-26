module Refinery
  module Plans
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Plans

      engine_name :refinery_plans

      initializer "register refinerycms_plans plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "plans"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.plans_admin_plans_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/plans/plan',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Plans)
      end
    end
  end
end
