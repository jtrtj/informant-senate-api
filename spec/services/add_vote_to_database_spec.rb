require 'rails_helper'

describe AddVoteToDatabase do
  context 'class methods' do
    it '.add_vote(vote) - takes Vote object and adds it to the database' do
      vote = PreDatabaseVote.new(data)
      
      expect { AddVoteToDatabase.add_vote(vote) }.to change { Vote.count }.by(1)
    end
  end
end