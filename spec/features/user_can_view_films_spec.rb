require_relative '../spec_helper'

RSpec.describe "When a user visits '/films'" do
  it "they see a list of films" do
    Film.create(title: "Title1", year: 2015, box_office_sales: 4)
    Film.create(title: "Title2", year: 2014, box_office_sales: 3)

    visit '/films'

    within("#films h3:nth-of-type(1)") do
      expect(page).to have_content("Title1")
    end
    within("#films h3:nth-of-type(2)") do
      expect(page).to have_content("Title2")
    end
  end
end
