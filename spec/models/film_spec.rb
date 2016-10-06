require_relative '../spec_helper'

RSpec.describe "Film" do
  describe ".total_sales" do
    it "returns total sales for all films" do
      Film.create(title: "Film1", year: 2012, box_office_sales: 3)
      Film.create(title: "Film2", year: 2013, box_office_sales: 2)

      expect(Film.total_sales).to eq(5)
    end
  end

  it "is invalid without a name" do
    film = Film.new(year: 2012, box_office_sales: 3)

    expect(film).to_not be_valid
  end
end


