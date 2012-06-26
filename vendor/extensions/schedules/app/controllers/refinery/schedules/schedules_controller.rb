module Refinery
  module Schedules
    class SchedulesController < ::ApplicationController

      before_filter :find_all_schedules
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @schedule in the line below:
        present(@page)
      end

      def show
        @schedule = Schedule.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @schedule in the line below:
        present(@page)
      end

    protected

      def find_all_schedules
        @schedules = Schedule.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/schedules").first
      end

    end
  end
end
