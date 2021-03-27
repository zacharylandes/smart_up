require 'rails_helper'


RSpec.describe "Activity API" do 

  describe "HTTP" do

    it "returns all series" do
      create_list(:series, 5)
      Series.all.each{|series|FactoryBot.create(:lesson,series:series)}      
      get '/series.json'

      expect(response).to be_successful
      series = JSON.parse(response.body)
      expect(series.count).to eq 5
      expect(series.class).to eq Array
      expect(response.class).to eq ActionDispatch::TestResponse
      expect(response.body.class).to eq String
    end 

    it "returns one series" do
      series =  FactoryBot.create(:series)
      FactoryBot.create(:lesson,series:series)
      get "/series/#{series.id}.json"

      expect(response).to be_successful
      series = JSON.parse(response.body)
      expect(Series.find(series["id"])).to be_instance_of Series
    end 


  end 
end 