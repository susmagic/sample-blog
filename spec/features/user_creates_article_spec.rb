require 'spec_helper'

feature 'Article creation' do
  before(:each) do
    sign_up
    create_article
  end

  scenario 'allows user to visit new article page' do
    visit new_article_path
    expect(page).to have_content I18n.t('article.new_article')
  end

  scenario 'allows user to create new article' do

    expect(page).to have_content I18n.t('article.comments')
  end

  scenario 'allows user to create new comment' do
    fill_in :comment_author, with: 'test33'
    fill_in :comment_body, with: 'text33'
    click_button 'Create Comment'

    expect(page).to have_content 'said'
  end

  scenario 'allows user to edit article' do
    visit articles_path
    click_link 'Edit'

    fill_in :article_title, with: 'title edit'
    fill_in :article_text, with: 'test edit'
    click_button 'Save Article'

    expect(page).to have_content I18n.t('article.comments')

  end
end
