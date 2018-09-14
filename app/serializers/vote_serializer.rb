class VoteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :number, :question, :description, :type_of

  has_many :articles
end
