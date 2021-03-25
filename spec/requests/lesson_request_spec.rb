require 'rails_helper'

require 'pry'

RSpec.describe "Series API" do 

  context "HTTP" do

    let!(:series) { FactoryBot.create(:series) }
    let!(:lessons) { create_list(:lesson, 5,series_id: series.id) }

    it "returns all lessons belonging to a series" do
      # series =  FactoryBot.create(:series)
      # create_list(:lesson, 5,series_id: series.id)
      get "/series/#{series.id}/lessons.json"

      expect(response).to be_successful
      series = JSON.parse(response.body)
      expect(series.count).to eq 5
      expect(series.class).to eq Array
      expect(response.class).to eq ActionDispatch::TestResponse
      expect(response.body.class).to eq String
    end 

    it "returns one series" do
      # series =  FactoryBot.create(:series)
      # lesson =  FactoryBot.create(:lesson, series_id: series.id)

      get "/series/#{series.id}/lessons/#{lessons.first.id}.json"

      expect(response).to be_successful
      lesson = JSON.parse(response.body)
      expect(Lesson.find(lesson["id"])).to be_instance_of Lesson
    end 


  end 
end 