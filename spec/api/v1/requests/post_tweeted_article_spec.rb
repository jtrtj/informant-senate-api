require 'rails_helper'

RSpec.describe 'Votes Api', type: :request do
  let!(:vote) { create(:vote)}
  let!(:article) { create(:article, vote: vote)}

  context 'POST /api/v1/tweeted-articles' do
    it 'creates a tweeted article in the db from the provided params' do
      uid = '03498573'
      article_id = article.id

      post "/api/v1/tweeted-articles?uid=#{uid}&article=#{article_id}"
    
      expect(response.status).to eq(201)
      expect(TweetedArticle.last.twitter_uid).to eq(uid)
      expect(TweetedArticle.last.article).to eq(article)
    end
  end
end