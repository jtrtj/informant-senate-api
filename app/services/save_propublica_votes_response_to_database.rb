class SavePropublicaVotesResponseToDatabase
  def self.save_recent_votes
    pre_database_votes_from_response.each do | pre_database_vote |
      AddVoteToDatabase.new(pre_database_vote).add_vote
    end
  end

  private

  def self.pre_database_votes_from_response
    get_response_body_results.map do | vote_data |
      PreDatabaseVote.new(vote_data)
    end
  end

  def self.get_response_body_results
    JSON.parse(make_request.body, symbolize_names: true)[:results][:votes]
  end

  def self.make_request
    conn.get('/congress/v1/senate/votes/recent.json')
  end

  def self.conn
    PropublicaConnection.conn
  end
end