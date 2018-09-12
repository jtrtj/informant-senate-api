require 'rails_helper'

describe SavePropublicaVotesResponseToDatabase do
  context 'class methods' do
    it '.save_recent_votes' do
      expect { SavePropublicaVotesResponseToDatabase.save_recent_votes }.to change { Vote.count }.by(20)
    end
  end
end