
FactoryGirl.define do
  factory :schedule, :class => Refinery::Schedules::Schedule do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

