require 'rails_helper'

feature 'Index displays a list of posts' do 

  before do 
    post_one = create(:post, caption: "This is the first post")
    post_two = create(:post, caption: "This is the second post")
  end

  scenario 'the index displays correct post information' do
    visit '/'
    expect(page).to have_content("This is the first post")
    expect(page).to have_content("This is the second post")
    expect(page).to have_css("img[src*='taco']")
  end
end