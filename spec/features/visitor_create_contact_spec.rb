require 'spec_helper'

feature 'Contact creation' do

  scenario 'allows access to contacts page' do
    visit contacts_path

    expect(page).to have_content I18n.t('contacts.contact_us')
  end

  scenario 'allows a guest to create contact' do
    visit new_contacts_path

    fill_in :contact_email, with: 'user@example.com'
    fill_in :contact_message, with: 'test text'

    click_button 'Send Message'

    expect(page).to have_content I18n.t('contacts.thanks')
  end

end
