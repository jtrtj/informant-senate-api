require 'rails_helper'

describe SaveNewsApiResponseToArticles do
  context 'instance methods' do
    before :each do
      description =  "A bill making appropriations for energy and water development and related agencies for the fiscal year ending September 30, 2019, and for other purposes."
      @vote = create(:vote, description: description)
    end
    it '#save_news_to_article' do
      snarta = SaveNewsApiResponseToArticles.new(@vote)
      snarta.save_news_to_article
      new_article = Article.first
      expect(new_article.vote).to eq(@vote)
    end
  end
end