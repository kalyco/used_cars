require 'rails_helper'

feature 'add manufacturer to list' do
  scenario 'I must specify a manufacturer name and country.' do
    visit new_manufacturer_path
    fill_in "name", with: "Lamborghini"
    fill_in "country", with: "Italian"
    click_button "add manufacturer"
    expect(page).to have_content("Lamborghini")
    expect(page).to have_content("Italian")
    expect(page).to have_content("You have added a new manufacturer!")
  end
  scenario 'if i do not specify the required information
  I am presented with errors' do
    visit new_manufacturer_path
    click_button "add manufacturer"
    expect(page).to have_content("Manufacturer not added. Check requirements!")
    expect(page).to have_content("Name can't be blank")
    expect(page).to have_content("Country can't be blank")
  end
end
