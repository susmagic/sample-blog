require 'spec_helper'

feature 'Contact creation' do
  scenario 'allows access to contacts page' do
    visit '/contacts'

    expect(page).to have_content I18n.t('contacts.contact_us')
  end
end
