require 'rails_helper'

describe NewsApiConnection do
  context 'class methods' do
    it '.conn - makes a connection to news api', :vcr do
      conn = NewsApiConnection.conn
      response = conn.get("/everything?q=us government&apiKey=#{ENV['news_api_key']}")
      parsed_response_body = JSON.parse(response.body)

      expect(parsed_response_body["status"]).to eq('ok') 
      expect(parsed_response_body).to have_key("articles")
    end
  end
end