class Api::V1::TweetedArticlesController < ApplicationController
  def create
    sta = SaveTweetedArticle.new(tweeted_article_params)
    sta.save
    render status: sta.status
  end

  private

  def tweeted_article_params
    params.permit(:uid, :article)
  end
end