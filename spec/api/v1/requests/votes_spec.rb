require 'rails_helper'

RSpec.describe 'Votes API', type: :request do
  let!(:votes) { create_list(:vote, 10) }
  context 'GET /api/v1/votes' do
    before { get '/api/v1/votes' }
    
    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end

    it 'returns votes' do
      expect(json.first).to have_key("number")
      expect(json.first).to have_key("question")
      expect(json.first).to have_key("description")
      expect(json.first).to have_key("type_of")
      expect(json.first).to have_key("articles")
      expect(json.size).to eq(10)
    end

  end
end