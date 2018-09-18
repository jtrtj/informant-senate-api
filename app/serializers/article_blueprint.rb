class ArticleBlueprint < Blueprinter::Base
  identifier :id
  fields :id, :title, :description, :url, :image_url, :source
end