require 'rails_helper'

describe ArticlesFromNewsApi do
  context 'class methods' do
    it '.fetch(description) - return an array of PreDatabaseArticles from News Api response' do
      description =  "A bill making appropriations for energy and water development and related agencies for the fiscal year ending September 30, 2019, and for other purposes."
      pre_datbase_articles = ArticlesFromNewsApi.fetch(description)

      expect(pre_datbase_articles[0]).to be_a(PreDatabaseArticle)
    end
  end
end