require 'rails_helper'

describe Article do
  context 'validations' do
    it { should validate_presence_of(:vote_id) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:url) }
    it { should validate_presence_of(:image_url) }
    it { should validate_presence_of(:source) }
  end
  context 'relationships' do
    it { should belong_to(:vote) }
  end
end 