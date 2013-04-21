require 'spec_helper'

feature 'The homepage' do
  scenario 'Visiting the home page' do
    visit '/'
    page.should have_content 'Javascript Web Client Homepage'
    page.should have_content 'Is in home scope: yes'
  end
end
