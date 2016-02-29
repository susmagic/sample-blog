require 'spec_helper'

feature 'Contact creation' do
  scenario 'allows access to contacts page' do
    visit '/contacts'

    expect(page).to have_content 'Contact us'
  end
end
