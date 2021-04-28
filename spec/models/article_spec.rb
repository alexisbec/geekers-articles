require 'rails_helper'

RSpec.describe Article, type: :model do
  context 'with correct params' do
    before do
      Category.create(id: 1, name: 'Sports', priority: 1)
      User.create(id: 1, name: 'Miguel')
    end

    it 'creates an article' do
      @article = Article.create(author_id: 1, category_id: 1, title: 'Test for Article Model', text: 'This is a test',
                                image: '123456.jpg')
      expect(@article).to be_valid
    end
  end

  context 'with incorrect params' do
    before do
      Category.create(id: 1, name: 'Sports', priority: 1)
      User.create(id: 1, name: 'Angel')
    end

    it 'should not save an article without an author' do
      @article = Article.create(category_id: 1, title: 'Test for Article Model', text: 'This is a test',
                                image: '123456.jpg')
      expect(@article).not_to be_valid
    end

    it 'should not save an article without a category' do
      @article = Article.create(author_id: 1, title: 'Test for Article Model', text: 'This is a test',
                                image: '123456.jpg')
      expect(@article).not_to be_valid
    end

    it 'should not save an article with a title less than 5 characters' do
      @article = Article.create(author_id: 1, category_id: 1, title: 'Test', text: 'This is a test',
                                image: '123456.jpg')
      expect(@article).not_to be_valid
    end

    it 'should not save an article with a text less than 10 characters' do
      @article = Article.create(author_id: 1, category_id: 1, title: 'Test for Article Model', text: 'This',
                                image: '123456.jpg')
      expect(@article).not_to be_valid
    end

    it 'should not save an article without an image' do
      @article = Article.create(author_id: 1, category_id: 1, title: 'Test for Article Model', text: 'This is a test')
      expect(@article).not_to be_valid
    end
  end
end
