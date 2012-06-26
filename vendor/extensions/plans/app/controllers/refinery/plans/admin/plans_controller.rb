module Refinery
  module Plans
    module Admin
      class PlansController < ::Refinery::AdminController

        crudify :'refinery/plans/plan',
                :title_attribute => 'name', :xhr_paging => true

      end
    end
  end
end
