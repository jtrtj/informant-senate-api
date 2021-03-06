class Article < ApplicationRecord
  validates_presence_of :vote_id,
                        :description,
                        :url,
                        :image_url,
                        :source

  belongs_to :vote
  has_many :tweeted_articles
end