require 'rails_helper'

RSpec.feature 'Logins', type: :feature do
  background { visit new_user_registration_path }

  scenario 'with valid information' do
    fill_in 'Name', with: 'Abeni'
    fill_in 'Email', with: 'ab@gmail.com'
    fill_in 'Password', with: 'Abeni2128'
    fill_in 'Confirm Password', with: 'Abeni2128'

    click_button 'Sign Up'
    expect(page).to have_content('Welcome! You have signed up successfully.')
  end

  scenario 'with invalid information' do
    fill_in 'Name', with: 'Ab'
    fill_in 'Email', with: 'ab@gmail.com'
    fill_in 'Password', with: 'Abeni2128'
    fill_in 'Confirm Password', with: 'Abeni4132'

    click_button 'Sign Up'
    expect(page).to have_content('error prohibited this user from being saved')
  end
end
