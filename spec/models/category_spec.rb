require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'with correct params' do
    it 'creates a category' do
      @category = Category.create(id: 2, name: 'Music', priority: 2)
      expect(@category).to be_valid
    end
  end

  context 'with incorrect params' do
    it 'will not be created without a name' do
      @category = Category.create(id: 2, priority: 2)
      expect(@category).not_to be_valid
    end

    it 'will not be created without a priority' do
      @category = Category.create(id: 2, name: 'Music')
      expect(@category).not_to be_valid
    end

    it 'will not be created with a very short name' do
      @category = Category.create(id: 2, name: 'T', priority: 2)
      expect(@category).not_to be_valid
    end

    it 'will not be created with a very long name' do
      @category = Category.create(id: 2, name: 'Television and Entertainment', priority: 2)
      expect(@category).not_to be_valid
    end
  end

  context 'associations' do
    it { should have_many(:articles) }
  end
end