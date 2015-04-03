require 'rails_helper'

feature 'As a visitor I want to see a list of cars specific to a manufacturer' do
let(:car) { FactoryGirl.create(:car) }
  scenario 'visitor sees list of cars' do
  visit manufacturer_path(car.manufacturer)
  expect(page).to have_content(car.manufacturer.name)
  expect(page).to have_content(car.year)
  expect(page).to have_content(car.color)
  expect(page).to have_content(car.mileage)
  expect(page).to have_content(car.model)
  end
end
