FactoryBot.define do
  factory :lesson do
    sequence(:series_id)
    title { "MyString" }
    image { "MyString" }
    video { "MyString" }
    content { "MyString" }
    sequence(:sort_key)

  end
end
