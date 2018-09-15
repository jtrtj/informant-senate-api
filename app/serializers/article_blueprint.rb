class ArticleBlueprint < Blueprinter::Base
  identifier :title
  fields :description, :url, :image_url, :source
end