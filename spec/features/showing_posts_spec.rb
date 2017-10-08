require 'rails_helper'

feature 'Showing individual posts' do 
  scenario 'can view a single post' do 
    visit '/'
  end

  before do 
    post = create(:post)
  end

  scenario 'need an image to create a post' do 
    visit '/'
    find(:xpath, "//a[contains(@href,'posts/1')]").click
    expect(page.current_path).to eq(post_path(1))
    expect(page).to have_content("tasty tasty taco")
  end
end