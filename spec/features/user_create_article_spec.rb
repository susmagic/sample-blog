require 'spec_helper'

feature 'Article creation' do
  before(:all) do
    sign_up
  end

  scenario 'allows user to visit new article page' do
    visit new_article_path

    expect(page).to have_content I18n.t('contacts.new_article')
  end
end
