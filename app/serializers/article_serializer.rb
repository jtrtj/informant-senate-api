class ArticleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :url, :image_url, :source

  belongs_to :vote
end
