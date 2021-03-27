
FactoryBot.define do
  factory :user_series do
    sequence(:user_id)
    sequence(:series_id)
  end
end
