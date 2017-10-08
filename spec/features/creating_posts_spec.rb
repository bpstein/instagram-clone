require 'rails_helper.rb'

feature 'Creating posts' do 
  scenario 'can create a post' do 
    visit '/'
    click_link 'New Post'
    attach_file('Image', "spec/files/images/taco.jpg")
    fill_in 'Caption', with: 'nom nom taco'
    click_button 'Create Post'
    expect(page).to have_content('nom nom')
    expect(page).to have_css("img[src*='taco.jpg']")
  end
end