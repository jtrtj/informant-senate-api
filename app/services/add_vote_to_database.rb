class AddVoteToDatabase < SimpleDelegator
  def add_vote
    Vote.create(number: number, 
                question: question,
                description: description,
                type_of: type_of)
  end
end