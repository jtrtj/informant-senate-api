class VoteBlueprint < Blueprinter::Base
  identifier :number
  fields :question, :description, :result, :type_of
  field :created_at, datetime_format: "%m/%d/%Y"
  association :articles, blueprint: ArticleBlueprint
end