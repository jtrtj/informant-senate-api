class AddVoteToDatabase < SimpleDelegator
  def add_vote
    Vote.create(number: number, 
                question: question,
                description: description,
                type_of: type_of,
                result: result,
                democrat_yes: democrat_yes,
                democrat_no: democrat_no,
                democrat_not_voting: democrat_not_voting,
                republican_yes: republican_yes,
                republican_no: republican_no,
                republican_not_voting: republican_not_voting,
                independent_yes: independent_yes,
                independent_no: independent_no,
                independent_not_voting: independent_not_voting,
                total_yes: total_yes,
                total_no: total_no,
                total_not_voting: total_not_voting
                )
  end
end