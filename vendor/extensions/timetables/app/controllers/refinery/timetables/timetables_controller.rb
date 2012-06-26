module Refinery
  module Timetables
    class TimetablesController < ::ApplicationController

      before_filter :find_all_timetables
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @timetable in the line below:
        present(@page)
      end

      def show
        @timetable = Timetable.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @timetable in the line below:
        present(@page)
      end

    protected

      def find_all_timetables
        @timetables = Timetable.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/timetables").first
      end

    end
  end
end
