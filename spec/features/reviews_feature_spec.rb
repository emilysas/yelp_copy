require 'rails_helper'

feature 'reviewing' do
  before {Restaurant.create name: 'KFC' }
  
  before(:each) do
    visit '/'
    click_link 'Sign up'
    fill_in 'Email', with: 'test@test.com'
    fill_in 'Password', with: 'testtest'
    fill_in 'Password confirmation', with: 'testtest'
    click_button 'Sign up'
  end

  def leave_review(thoughts, rating)
    visit '/restaurants'
    click_link 'Review KFC'
    fill_in 'Thoughts', with: thoughts
    select rating, from: 'Rating'
    click_button 'Leave Review'
  end

  scenario 'allows users to leave a review using a form' do
    leave_review("so so", '3')
    expect(current_path).to eq '/'
    expect(page).to have_content('so so')
  end

  scenario 'displays an average rating for all reviews' do
    leave_review('So so', '3')
    click_link 'Sign out'
    click_link 'Sign up'
    fill_in 'Email', with: 'alt_test@test.com'
    fill_in 'Password', with: 'alt_test'
    fill_in 'Password confirmation', with: 'alt_test'
    click_button 'Sign up'
    leave_review('Great', '5')
    expect(page).to have_content('Average rating: ★★★★☆')
  end

  scenario 'displays when review was left relative to time now' do
    leave_review('so so', '3')
    expect(page).to have_content('less than a minute ago')
  end

end 