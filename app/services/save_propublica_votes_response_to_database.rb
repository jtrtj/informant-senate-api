class SavePropublicaVotesResponseToDatabase
  def self.save_recent_votes
    get_response_body_results.each do | vote_data |
      AddVoteToDatabase.new(PreDatabaseVote.new(vote_data)).add_vote
    end
  end

  private

  def self.get_response_body_results
    JSON.parse(make_request.body[:results], symbolize_names: true)
  end

  def self.make_request
    conn.get('/congress/v1/senate/votes/recent.json')
  end

  def self.conn
    PropublicaConnection.conn
  end
end