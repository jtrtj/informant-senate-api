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
      expect(json.first["number"]).to eq(new_vote.number)
      expect(json.first["question"]).to eq(new_vote.question)
      expect(json.first["description"]).to eq(new_vote.description)
      expect(json.first["description"]).to eq(new_vote.description)
      expect(json.first["result"]).to eq(new_vote.result)
      expect(json.first["result"]).to eq(new_vote.result)
      expect(json.first["type_of"]).to eq(new_vote.type_of)
      expect(json.first["articles"].first).to have_key("title")
      expect(json.first["articles"].first).to have_key("description")
      expect(json.first["articles"].first).to have_key("source")
      expect(json.first["articles"].first).to have_key("image_url")
      expect(json.first["articles"].first).to have_key("url")
    end
  end
end
