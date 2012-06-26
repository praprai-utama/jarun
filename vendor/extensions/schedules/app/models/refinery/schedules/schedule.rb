module Refinery
  module Schedules
    class Schedule < Refinery::Core::BaseModel
      self.table_name = 'refinery_schedules'

      attr_accessible :name, :datetime, :upright, :photo, :description, :position

      acts_as_indexed :fields => [:name, :description]

      validates :name, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
