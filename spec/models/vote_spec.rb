require 'rails_helper'

RSpec.describe Vote, type: :model do
  context 'with correct params' do
    it 'creates a vote' do
      User.create(id: 10, name: 'Miguel')
      Category.create(id: 1, name: 'Sports', priority: 1)
      Article.create(id: 10, author_id: 10, category_id: 1, title: 'Test for Vote Model', text: 'This is a test',
                     image: '123456.jpg')
      @vote = Vote.create(id: 2, user_id: 10, article_id: 10)
      expect(@vote).to be_valid
    end
  end

  context 'with incorrect params' do
    it 'will not be created without an article_id' do
      User.create(id: 7, name: 'Victor')
      @vote = Vote.create(id: 3, user_id: 7)
      expect(@vote).not_to be_valid
    end

    it 'will not be created without a user_id' do
      @vote = Vote.create(id: 3, article_id: 10)
      expect(@vote).not_to be_valid
    end
  end

  context 'associations' do
    it { should belong_to(:user).class_name('User') }
    it { should belong_to(:article).class_name('Article') }
  end
end
