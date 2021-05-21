require 'rails_helper'

RSpec.describe User, type: :model do
  context 'with correct params' do
    before do
      @user = User.create(name: 'Peter')
    end

    it 'creates a user' do
      expect(@user).to be_valid
    end

    it 'reads a user' do
      expect(User.find_by(name: 'Peter')).to eq(@user)
    end
  end

  context 'with incorrect params' do
    it 'cannot create a user with a short name' do
      @user = User.create(name: 'He')
      expect(@user).not_to be_valid
    end

    it 'cannot create a user with a long name' do
      @user = User.create(name: 'Uvuvwevwevwe Onyetenyevwe Ugwemuhwem Osas')
      expect(@user).not_to be_valid
    end
  end

  context 'associations' do
    it { should have_many(:articles) }
    it { should have_many(:votes) }
  end
end
