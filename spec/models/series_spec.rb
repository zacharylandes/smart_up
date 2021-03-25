require 'rails_helper'

RSpec.describe Series, type: :model do
    
	describe 'exists' do 
		let!(:series) { FactoryBot.create(:series)}
			it '#methods'do 
			expect(Series.count).to eq 1
			expect(Series.first).to be_instance_of Series
		end
	end
end
