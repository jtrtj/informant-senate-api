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
  end
end