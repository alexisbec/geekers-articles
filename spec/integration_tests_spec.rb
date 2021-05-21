require 'rails_helper'

RSpec.describe 'App Integration', type: :system do
  describe 'User Authentication' do
    it 'allows user to sign up and sign out' do
      visit root_path
      click_on 'Sign Up'
      fill_in "What's your name?", with: 'Alexis'
      click_on 'Create User'
      expect(page).to have_content('Alexis')
      click_on 'Sign Out'
      expect(page).to have_content('Sign Up')
    end

    it 'allows user to log in after sign up' do
      visit root_path
      click_on 'Log In'
      fill_in 'Enter your name', with: 'Alexis'
      click_on 'Enter'
      expect(page).to have_content('Alexis')
    end
  end

  describe 'Articles Features' do
    it 'allows user to create an article' do
      visit root_path
      click_on 'All Categories'
      click_on 'New Category'
      fill_in 'Name', with: 'Sports'
      select '1', from: 'Priority'
      click_on 'Create Category'
      click_on 'All Categories'
      expect(page).to have_content('Sports')
      click_on 'Sign Up'
      fill_in "What's your name?", with: 'Arturo'
      click_on 'Create User'
      click_on 'New Article'
      fill_in 'Title', with: 'Tests made with Capybara'
      fill_in 'Text', with: 'Test for creating articles and votes'
      select 'Sports', from: 'Category'
      select 'Sports_1', from: 'Image'
      click_on 'Create Article'
      expect(page).to have_content('Tests made with Capybara')
      click_on 'Sign Out'
    end

    it 'allows user to vote for an article' do
      visit root_path
      click_on 'Sign Up'
      fill_in "What's your name?", with: 'Denis'
      click_on 'Create User'
      click_on 'All Categories'
      click_on 'Sports'
      click_on 'Watch all the article'
      click_on 'Vote!'
      expect(page).to have_content('Tests made with Capybara')
      click_on 'Sign Out'
    end
  end
end
