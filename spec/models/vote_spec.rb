require 'rails_helper'

RSpec.describe Vote, type: :model do
  context 'validations' do
    it { should validate_presence_of(:number) }
    it { should validate_presence_of(:question) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:type_of) }
    it { should define_enum_for(:type_of) }
    it { should validate_presence_of(:result) }
    it { should validate_presence_of(:democrat_yes) }
    it { should validate_presence_of(:democrat_no) }
    it { should validate_presence_of(:democrat_not_voting) }
    it { should validate_presence_of(:republican_yes) }
    it { should validate_presence_of(:republican_no) }
    it { should validate_presence_of(:republican_not_voting) }
    it { should validate_presence_of(:independent_yes) }
    it { should validate_presence_of(:independent_no) }
    it { should validate_presence_of(:independent_not_voting) }
    it { should validate_presence_of(:total_yes) }
    it { should validate_presence_of(:total_no) }
    it { should validate_presence_of(:total_not_voting) }
  end
  context 'relationships' do
    it { should have_many(:articles) } 
  end
end
