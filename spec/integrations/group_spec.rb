require 'rails_helper'

RSpec.feature 'Groups', type: :feature do
  background do
    visit new_user_registration_path
    fill_in 'Name', with: 'Abeni'
    fill_in 'Email', with: 'ab@gmail.com'
    fill_in 'Password', with: 'Abeni2128'
    fill_in 'Confirm Password', with: 'Abeni2128'
    click_button 'Sign Up'

    visit groups_path
  end

  scenario 'show groups_path' do
    expect(page).to have_content('Total Expenses')
  end

  scenario 'show user name' do
    expect(page).to have_content('Abeni')
  end

  scenario 'show user image' do
    expect(page).to have_css('img')
  end

  scenario 'add a group' do
    click_link 'Add'
    expect(page).to have_content('Add Group')
  end

  scenario 'add a group show Category' do
    click_link 'Add'
    expect(page).to have_content('Category')
  end
end
