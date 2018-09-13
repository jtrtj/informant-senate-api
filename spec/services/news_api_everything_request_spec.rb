require 'rails_helper'

describe NewsApiEverythingRequest do
  context 'class methods' do
    it '.search(query) - it makes a get request to News Api and returns a hash' do
      query = "A bill making appropriations for energy and water development and related agencies for the fiscal year ending September 30, 2019, and for other purposes."
      results = NewsApiEverythingRequest.search(query)

      expect(results).to have_key(:articles)
      expect(results[:articles]).to be_an(Array)
    end
  end
end