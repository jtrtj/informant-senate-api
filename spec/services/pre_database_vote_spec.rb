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
      expect(pre_database_vote.result).to eq(data[:result])
      expect(pre_database_vote.democrat_yes).to eq(data[:democratic][:yes])
      expect(pre_database_vote.democrat_no).to eq(data[:democratic][:no])
      expect(pre_database_vote.democrat_not_voting).to eq(data[:democratic][:not_voting])
      expect(pre_database_vote.republican_yes).to eq(data[:republican][:yes])
      expect(pre_database_vote.republican_no).to eq(data[:republican][:no])
      expect(pre_database_vote.republican_not_voting).to eq(data[:republican][:not_voting])
      expect(pre_database_vote.independent_yes).to eq(data[:independent][:yes])
      expect(pre_database_vote.independent_no).to eq(data[:independent][:no])
      expect(pre_database_vote.independent_not_voting).to eq(data[:independent][:not_voting])
      expect(pre_database_vote.total_yes).to eq(data[:total][:yes])
      expect(pre_database_vote.total_no).to eq(data[:total][:no])
      expect(pre_database_vote.total_not_voting).to eq(data[:total][:not_voting])
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