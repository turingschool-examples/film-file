require_relative '../spec_helper'

RSpec.describe "When a user visits '/films/new'" do
  it "they can create a new film" do
    visit '/films/new'

    fill_in('film[title]', with: 'Title1')
    fill_in('film[year]', with: '2012')
    fill_in('film[box_office_sales]', with: '4')
    click_on('Create Film')

    expect(page).to have_content("Title1")
    expect(Film.last.year).to eq(2012)
  end
end
