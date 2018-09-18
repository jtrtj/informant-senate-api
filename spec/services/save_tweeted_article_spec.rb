require 'rails_helper'

describe SaveTweetedArticle do
  context 'instance methods' do
    it '#save' do
      article = create(:article, vote: create(:vote))
      params = {uid: '6543', article: article.id}

      sta = SaveTweetedArticle.new(params)
      sta.save
      
      expect(article.tweeted_articles.count).to eq(1)
      expect(article.tweeted_articles.first.twitter_uid).to eq(params[:uid])
    end
  end
end
