require 'rails_helper'

describe PreDatabaseVote do
  context 'attributes' do
    it 'creates attributes to be saved in the database from a ProPublica vote hash' do
      file = File.read('spec/fixtures/mock_nomination_vote.json')
      data = JSON.parse(file, symbolize_names: true)
      pre_database_vote = PreDatabaseVote.new(data)

      expect(pre_database_vote.number).to eq(data[:nomination][:number])
      expect(pre_database_vote.question).to eq(data[:question])
      expect(pre_database_vote.description).to eq(data[:description])
      expect(pre_database_vote.type_of).to eq(data.keys[9].to_s)
    end

    it 'can create a vote for either a nomination or a bill' do
      bill_vote_file = File.read('spec/fixtures/mock_bill_vote.json')
      nomination_vote_file = File.read('spec/fixtures/mock_nomination_vote.json')
      bill_vote_data = JSON.parse(bill_vote_file, symbolize_names: true)
      nomination_vote_data = JSON.parse(nomination_vote_file, symbolize_names: true)
      pre_database_bill_vote = PreDatabaseVote.new(bill_vote_data)
      pre_database_nomination_vote = PreDatabaseVote.new(nomination_vote_data)

      expect(pre_database_bill_vote.type_of).to eq("bill")
      expect(pre_database_nomination_vote.type_of).to eq("nomination")
    end
  end
end