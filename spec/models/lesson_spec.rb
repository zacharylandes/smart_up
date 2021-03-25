require 'rails_helper'

RSpec.describe Lesson, type: :model do
    
	describe 'exists' do 
		let!(:series) { FactoryBot.create(:series)}
		let!(:lesson) { FactoryBot.create(:lesson, series_id:series.id)}
			it '#methods'do 
			expect(Lesson.count).to eq 1
			expect(lesson).to be_instance_of Lesson
			expect(lesson.series).to be_instance_of Series
		end
	end
end
