module Refinery
  module Timetables
    class Timetable < Refinery::Core::BaseModel
      self.table_name = 'refinery_timetables'

      attr_accessible :name, :datetime, :upright, :photo, :description, :position, :photo_id

      acts_as_indexed :fields => [:name, :description]

      validates :name, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
