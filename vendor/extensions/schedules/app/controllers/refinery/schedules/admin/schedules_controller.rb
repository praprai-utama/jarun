module Refinery
  module Schedules
    module Admin
      class SchedulesController < ::Refinery::AdminController

        crudify :'refinery/schedules/schedule',
                :title_attribute => 'name', :xhr_paging => true

      end
    end
  end
end
