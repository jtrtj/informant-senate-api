class Api::V1::TweetedArticlesController < ApplicationController
  def create
    SaveTweetedArticle.new(tweeted_article_params).save
    render status: 201
  end

  private

  def tweeted_article_params
    params.permit(:uid, :article)
  end
end