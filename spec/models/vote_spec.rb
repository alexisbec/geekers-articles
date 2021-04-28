require 'rails_helper'

RSpec.describe Vote, type: :model do
  context 'with correct params' do
    before do
      User.create(id: 1, name: "Miguel")
      Category.create(id: 1, name: "Sports", priority: 1)
      Article.create(id: 2, author_id: 1, category_id: 1, title: "Test for Vote Model", text: "This is a test", image: "123456.jpg")
      @vote = Vote.create(user_id: 1, article_id: 2)
    end

    it 'creates a vote' do
      expect(@vote).to be_valid
    end
  end

  context 'with incorrect params' do
    before do
      User.create(id: 1, name: "Miguel")
      @vote = Vote.create(user_id: 1, article_id: 2)
    end

    it 'creates a vote' do
      expect(@vote).not_to be_valid
    end
  end
end