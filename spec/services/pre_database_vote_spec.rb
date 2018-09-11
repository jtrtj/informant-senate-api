require 'rails_helper'

describe PreDatabaseVote do
  context 'attributes' do
    it 'creates attributes to be saved in the database from a ProPublica vote hash' do
      file = File.read('./fixtures/mock_nomination_vote.json')
      data = Json.parse(file, symbolize_names, true)
      
      binding.pry
      
      pre_database_vote = PreDatabaseVote.new(data)

      expect(pre_database_vote.number)
      expect(pre_database_vote.question)
      expect(pre_database_vote.description)
      expect(pre_database_vote.type_of)
    end
  end
end