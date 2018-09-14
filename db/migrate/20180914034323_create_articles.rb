class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.references :vote, foreign_key: true
      t.string :title
      t.string :description
      t.string :url
      t.string :image_url
      t.string :source

      t.timestamps
    end
  end
end
