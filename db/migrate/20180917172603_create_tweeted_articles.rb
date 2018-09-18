class CreateTweetedArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :tweeted_articles do |t|
      t.string :twitter_uid
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
