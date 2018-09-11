require 'rails_helper'

describe AddVoteToDatabase do
  context 'instance methods' do
    it '#add_vote(vote) - takes Vote object and adds it to the database' do
      file = File.read('spec/fixtures/mock_nomination_vote.json')
      data = JSON.parse(file, symbolize_names: true)
      vote = PreDatabaseVote.new(data)
      
      expect { AddVoteToDatabase.new(vote).add_vote }.to change { Vote.count }.by(1)
      
      binding.pry
      
    end
  end
end