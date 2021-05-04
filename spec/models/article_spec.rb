require 'rails_helper'

RSpec.describe Article, type: :model do
  context 'with correct params' do
    it 'creates an article' do
      Category.create(id: 1, name: 'Sports', priority: 1)
      User.create(id: 11, name: 'Peter')
      @article = Article.create(author_id: 11, category_id: 1, title: 'Test for Article Model', text: 'This is a test',
                                image: '123456.jpg')
      expect(@article).to be_valid
    end
  end

  context 'with incorrect params' do
    before do
      Category.create(id: 2, name: 'Music', priority: 2)
      User.create(id: 12, name: 'Angel')
    end

    it 'should not save an article without an author' do
      @article = Article.create(category_id: 2, title: 'Test for Article Model', text: 'This is a test',
                                image: '123456.jpg')
      expect(@article).not_to be_valid
    end

    it 'should not save an article without a category' do
      @article = Article.create(author_id: 12, title: 'Test for Article Model', text: 'This is a test',
                                image: '123456.jpg')
      expect(@article).not_to be_valid
    end

    it 'should not save an article without a title' do
      @article = Article.create(author_id: 12, category_id: 2, text: 'This is a test', image: '123456.jpg')
      expect(@article).not_to be_valid
    end

    it 'should not save an article with a title less than 5 characters' do
      @article = Article.create(author_id: 12, category_id: 2, title: 'Test', text: 'This is a test',
                                image: '123456.jpg')
      expect(@article).not_to be_valid
    end

    it 'should not save an article without text' do
      @article = Article.create(author_id: 12, category_id: 2, title: 'This is a test', image: '123456.jpg')
      expect(@article).not_to be_valid
    end

    it 'should not save an article with a text less than 10 characters' do
      @article = Article.create(author_id: 12, category_id: 2, title: 'Test for Article Model', text: 'This',
                                image: '123456.jpg')
      expect(@article).not_to be_valid
    end

    it 'should not save an article without an image' do
      @article = Article.create(author_id: 12, category_id: 2, title: 'Test for Article Model', text: 'This is a test')
      expect(@article).not_to be_valid
    end
  end

  context 'associations' do
    it { should have_many(:votes) }
    it { should belong_to(:category).class_name('Category') }
    it { should belong_to(:author).class_name('User') }
  end
end
