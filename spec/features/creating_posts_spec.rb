<<<<<<< HEAD
require 'rails_helper'

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

  scenario 'need an image to create a post' do 
    visit '/'
    click_link 'New Post'
    fill_in 'Caption', with: 'I will not upload a pic'
    click_button 'Create Post'
    expect(page).to have_content('You must upload an image!')
  end
end
=======
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
>>>>>>> 2905e72d927fd41518bb7ba52e3d68bf1ffabf98
