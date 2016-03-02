def sign_up
  visit new_user_registration_path

  fill_in :user_email, with: 'user@example.com'
  fill_in :user_username, with: 'like'
  fill_in :user_password, with: 'kapusta123'
  fill_in :user_password_confirmation, with: 'kapusta123'

  click_button 'Sign up'
end

def create_article
  visit new_article_path

  fill_in :article_title, with: 'title test'
  fill_in :article_text, with: 'test text'

  click_button 'Save Article'
end
