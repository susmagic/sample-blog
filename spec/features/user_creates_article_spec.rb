require 'spec_helper'

feature 'Article creation' do
  before(:each) do
    sign_up
  end

  scenario 'allows user to visit new article page' do
    visit new_article_path
    expect(page).to have_content I18n.t('article.new_article')
  end

  scenario 'allows user to create new article' do
    visit new_article_path

    fill_in :article_title, with: 'title test'
    fill_in :article_text, with: 'test text'
    click_button 'Save Article'

    expect(page).to have_content I18n.t('article.comments')
  end

  scenario 'allows user to create new comment' do

  end
end
