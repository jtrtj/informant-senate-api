class VoteBlueprint < Blueprinter::Base
  identifier :number
  fields :question, :description, :result, :type_of
  field :created_at, datetime_format: "%m/%d/%Y"
  association :articles, blueprint: ArticleBlueprint
end

# class UserBlueprint < Blueprinter::Base
#   identifier :uuid
#   field :email, name: :login

#   view :normal do
#     fields :first_name, :last_name
#     association :projects, blueprint: ProjectBlueprint
#   end
# end