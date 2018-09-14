require 'rails_helper'

describe PreDatabaseArticle do
  context 'attributes' do
    it 'creates attributes to be saved in the database from a News Api article hash' do
      file = File.read('fixtures/mock_news_api_article.json')
      data = JSON.parse(file, symbolize_names: true)
      
      pre_database_article = PreDatabaseArticle.new(data)

      expect(pre_database_article.title).to eq(data[:title])
      expect(pre_database_article.description).to eq(data[:description])
      expect(pre_database_article.url).to eq(data[:url])
      expect(pre_database_article.image_url).to eq(data[:urlToImage])
      expect(pre_database_article.source).to eq(data[:source][:name])
    end
  end
end
