require 'spec_helper'

feature 'Account creation' do
  scenario 'allows guest to create account' do
    visit new_user_registration_path

    fill_in :user_email, with: 'user@example.com'
    fill_in :user_username, with: 'like'
    fill_in :user_password, with: 'kapusta123'
    fill_in :user_password_confirmation, with: 'kapusta123'

    click_button 'Sign up'

    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end
end
