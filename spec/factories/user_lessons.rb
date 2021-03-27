FactoryBot.define do
  factory :user_lesson do
    sequence(:user_id)
    sequence(:lesson_id)
  end
end
