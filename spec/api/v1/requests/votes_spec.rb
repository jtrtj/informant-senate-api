require 'rails_helper'

RSpec.describe 'Votes API', type: :request do
  let!(:votes) { create_list(:vote, 10) }
  context 'GET /api/v1/votes' do
    before { get '/api/v1/votes' }
    
    it 'returns votes' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end