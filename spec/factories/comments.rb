FactoryGirl.define do
  factory :comment do
    author "sus"
    sequence(:body) { |n| "comment body #{n}"}
  end
end
