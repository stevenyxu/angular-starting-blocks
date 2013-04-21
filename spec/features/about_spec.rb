require 'spec_helper'

feature 'The about page' do
  scenario 'Getting to the about page from the home page' do
    visit '/'
    page.should have_content 'Javascript Web Client Homepage'
    page.should_not have_content 'You are now on the about page.'
    click_link 'About'
    page.should have_content 'You are now on the about page.'
    page.should_not have_content 'Javascript Web Client Homepage'
  end
end
