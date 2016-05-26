require 'rails_helper'

feature 'Editing posts' do  
  background do
    job = create(:post)

    visit '/'
    find(:xpath, "//a[contains(@href,'posts/1')]").click
    click_link 'Edit Post'
  end
  scenario 'Can edit a post' do
    fill_in 'Caption', with: 'I made a mistake'
    click_button 'Update Post'
    expect(page).to have_content("Post updated.")
    expect(page).to have_content("I made a mistake")
  end
end  