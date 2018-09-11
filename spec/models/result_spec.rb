require 'rails_helper'

RSpec.describe Result, type: :model do
  context 'validations' do
    it { should validate_presence_of(:vote_id) }
    it { should validate_presence_of(:result) }
  end
  context 'relationships' do
    it { should belong_to(:vote) } 
  end
end
