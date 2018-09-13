class ArticlesFromNewsApi
  def self.fetch(description)
    news_api_evertyhing_response(description).map do | article_attributes |
      PreDataBaseArticle.new(article_attributes)
    end
  end

  private

  def self.news_api_evertyhing_response(query)
    NewsApiEverythingRequest.search(query)
  end
end