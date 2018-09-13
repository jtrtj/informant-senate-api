class SaveNewsApiResponseToArticles < SimpleDelegator
  def save_news_to_article
    pre_database_articles.each do | article |
      Article.create(vote:        self,
                     title:       article.title,
                     description: article.description,
                     url:         article.url,
                     image_url:   article.image_url,
                     source:      article.source
                    )
    end
  end

  private

  def pre_database_articles
    ArticlesFromNewsApi.fetch(description)
  end
end