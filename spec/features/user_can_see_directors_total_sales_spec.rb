require_relative '../spec_helper'

RSpec.describe "When a user visits '/directors/:id'" do
  it "they can see a director's total gross sales" do
    judd = Director.create(name: "Judd")
    judd.films.create(title: "Title1", year: 2000, box_office_sales: 2)
    judd.films.create(title: "Title2", year: 2000, box_office_sales: 2)

    visit "/directors/#{judd.id}"

    expect(page).to have_content("Total Gross Box Office Sales: $4")
  end
end
