require 'pry'

describe Film do
  describe "Class Methods" do
    describe ".total_box_office_sales" do
      it "returns the total box office sales for all films" do
        Film.create(title: "Clowns", year: 2018, box_office_sales: 3)
        Film.create(title: "Fargo", year: 1999, box_office_sales: 4)

        total = Film.total_box_office_sales

        expect(total).to eq(7)
      end
    end
  end

  describe "Validations" do
    it "it is invalid without a title" do
      film = Film.create(year: 2017, box_office_sales: 9)

      expect(film).to_not be_valid
    end
  end
end
