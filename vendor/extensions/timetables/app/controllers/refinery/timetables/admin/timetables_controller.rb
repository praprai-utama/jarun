module Refinery
  module Timetables
    module Admin
      class TimetablesController < ::Refinery::AdminController

        crudify :'refinery/timetables/timetable',
                :title_attribute => 'name', :xhr_paging => true

      end
    end
  end
end
