require 'rails_helper'

feature 'add car to list' do
  let(:manufacturer) { FactoryGirl.create(:manufacturer) }
  scenario 'I must add all details.' do
    visit new_manufacturer_car_path(manufacturer)
    fill_in "model", with: "bug"
    fill_in "year", with: 1950
    fill_in "mileage", with: 36000
    fill_in "color", with: "purple"
    click_button "add car"
    expect(page).to have_content("bug")
    expect(page).to have_content(1950)
    expect(page).to have_content(36000)
    expect(page).to have_content("purple")
    expect(page).to have_content("you have added a new car.")
  end
  scenario 'if i do not specify the required information
  I am presented with errors' do
    visit new_manufacturer_car_path(manufacturer)
    click_button "add car"
    expect(page).to have_content("car not added. check requirements")
    expect(page).to have_content("Model can't be blank")
    expect(page).to have_content("Year can't be blank")
    expect(page).to have_content("Year is not a number")
    expect(page).to have_content("Year is the wrong length (should be 4 characters)")
    expect(page).to have_content("Year is not included in the list")
    expect(page).to have_content("Color can't be blank")
    expect(page).to have_content("Mileage can't be blank")
  end
end
