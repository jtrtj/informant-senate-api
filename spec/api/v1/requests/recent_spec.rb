require 'rails_helper'

RSpec.describe 'Votes Api', type: :request do
  let!(:new_vote) { create(:vote, created_at: Time.now) }
  let!(:old_vote) { create(:vote, created_at: 1.hour.ago) }
  let!(:articles) { create_list(:article, 10, vote: new_vote)}
  context 'GET /api/v1/most-recent-vote ' do
    before { get '/api/v1/most-recent-vote' }

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end

    it "returns the most recent vote with it's related articles" do
      
      binding.pry
      
      expect(json["vote"]).to have_key("number")
      expect(json["vote"]["articles"]).to have_key("title")
    end
  end
end
