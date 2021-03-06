require 'rails_helper'

feature 'displaying images' do
  scenario 'upload and see a doggo' do
    visit '/feed'
    fill_in('image[title]', :with => "It a dog")
    attach_file('image[snappysnap]', 'app/assets/images/doggo.jpg')
    click_button('Create Image')
    have_xpath("//img[@src='/system/images/snappysnaps/000/000/001/original/doggo.jpg?1508680561']")
    end

  end
