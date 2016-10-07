require_relative '../spec_helper'

RSpec.describe "Film" do
  describe ".total_sales" do
    it "returns total sales for all films" do
      Film.create(title: "Film1", year: 2012, box_office_sales: 3)
      Film.create(title: "Film2", year: 2013, box_office_sales: 2)

      expect(Film.total_sales).to eq(5)
    end

    it "returns total sales for a single director" do
      jorge = Director.create(name: "Jorge")
      sal   = Director.create(name: "Sal")
      jorge.films.create(title: "Film1", year: 2012, box_office_sales: 3)
      jorge.films.create(title: "Film2", year: 2013, box_office_sales: 4)
      sal.films.create(title: "Film3", year: 2014, box_office_sales: 5)

      expect(jorge.films.total_sales).to eq(7)
    end
  end

  describe ".average_sales" do
    it "returns the average sales for all films" do
      Film.create(title: "Film1", year: 2012, box_office_sales: 4)
      Film.create(title: "Film2", year: 2013, box_office_sales: 2)

      expect(Film.average_sales).to eq(3)
    end

    it "returns the average sales for a single director" do
      jorge = Director.create(name: "Jorge")
      sal   = Director.create(name: "Sal")
      jorge.films.create(title: "Film1", year: 2012, box_office_sales: 2)
      jorge.films.create(title: "Film2", year: 2013, box_office_sales: 4)
      sal.films.create(title: "Film3", year: 2014, box_office_sales: 5)

      expect(jorge.films.average_sales).to eq(3)
    end
  end

  it "is invalid without a name" do
    film = Film.new(year: 2012, box_office_sales: 3)

    expect(film).to_not be_valid
  end

  it "is invalid without a year" do
    film = Film.new(title: "Film1", box_office_sales: 3)

    expect(film).to_not be_valid
  end

  it "is invalid without box_office_sales" do
    film = Film.new(title: "Film1", year: 2012)

    expect(film).to_not be_valid
  end

  it "is invalid with a duplicate title" do
    Film.create(title: "Film1", year: 2012, box_office_sales: 2)
    duplicate_film = Film.new(title: "Film1", year: 2013, box_office_sales: 3)

    expect(duplicate_film).to_not be_valid
  end
end


