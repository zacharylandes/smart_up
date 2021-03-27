require 'rails_helper'

RSpec.describe "Series API" do 

  context "HTTP" do

    let!(:series) { FactoryBot.create(:series) }
    let!(:user) { FactoryBot.create(:user) }
    let!(:lessons) { create_list(:lesson, 5,series_id: series.id) }
    let!(:user_series) { FactoryBot.create(:user_series, user:user, series: series) }
    let!(:user_lesson) { FactoryBot.create(:user_lesson, user:user,lesson: Lesson.first) }

    it "returns all lessons belonging to a series" do
      get "/series/#{series.id}/lessons.json"

      expect(response).to be_successful
      series = JSON.parse(response.body)
      expect(series.count).to eq 5
      expect(series.class).to eq Array
      expect(response.class).to eq ActionDispatch::TestResponse
      expect(response.body.class).to eq String
    end 

    it "returns one series" do
      get "/series/#{series.id}/lessons/#{lessons.first.id}.json"

      expect(response).to be_successful
      lesson = JSON.parse(response.body)
      expect(Lesson.find(lesson["id"])).to be_instance_of Lesson
    end 


  end 
end 