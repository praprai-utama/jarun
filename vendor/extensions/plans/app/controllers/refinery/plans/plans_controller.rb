module Refinery
  module Plans
    class PlansController < ::ApplicationController

      before_filter :find_all_plans
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @plan in the line below:
        present(@page)
      end

      def show
        @plan = Plan.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @plan in the line below:
        present(@page)
      end

    protected

      def find_all_plans
        @plans = Plan.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/plans").first
      end

    end
  end
end
