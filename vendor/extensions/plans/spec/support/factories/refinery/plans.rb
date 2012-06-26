
FactoryGirl.define do
  factory :plan, :class => Refinery::Plans::Plan do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

