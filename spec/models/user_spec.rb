require 'rails_helper'

RSpec.describe User, type: :model do
  context 'with correct params' do
    before do
      @user = User.create(name: 'Peter Parker')
    end

    it 'creates a user' do
      expect(@user).to be_valid
    end

    it 'reads a user' do
      expect(User.find_by(name: 'Peter Parker')).to eq(@user)
    end
  end

  context 'with incorrect params' do
    before do
      @user = User.create(name: 'He')
    end

    it 'cannot create a user' do
      expect(@user).not_to be_valid
    end
  end
end
