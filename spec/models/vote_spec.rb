require 'rails_helper'

RSpec.describe Vote, type: :model do
  context 'validations' do
    it { should validate_presence_of(:number) }
    it { should validate_presence_of(:question) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:type_of) }
    it { should define_enum_for(:type_of) }
  end
  context 'relationships' do
    
  end
end
