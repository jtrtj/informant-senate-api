class SaveTweetedArticle < SimpleDelegator
  def save
    tweeted_article = TweetedArticle.create!( twitter_uid: self[:uid],
                                              article_id: self[:article]
                                              )
  end
end