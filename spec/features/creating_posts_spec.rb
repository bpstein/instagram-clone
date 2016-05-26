require 'rails_helper.rb'

feature 'Creating posts' do  
  scenario 'can create a new post' do
    visit '/'
    click_link 'New Post'
    attach_file('Image', "spec/files/images/burger.jpg")
    fill_in 'Caption', with: 'nom nom nom' 
    click_button 'Create Post'
    expect(page).to have_content('nom nom nom')
    expect(page).to have_css("img[src*='burger.jpg']")
  end

  scenario 'needs an image to create a post' do 
    visit '/'
    click_link 'New Post'
    fill_in 'Caption', with: 'Words only'
    click_button 'Create Post'
    expect(page).to have_content('You need to provide an image before you post!')
  end
end  