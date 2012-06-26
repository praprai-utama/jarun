
FactoryGirl.define do
  factory :timetable, :class => Refinery::Timetables::Timetable do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

