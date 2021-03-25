FactoryBot.define do
    factory :series do
      title { "MyString" }
      status { "MyString" }
      start_time { Time.now  - 1.day}
			end_time {Time.now  }
    end
  end
  