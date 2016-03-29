class Director < ActiveRecord::Base
  has_many :films

  def list_films
    Film.where(director_id: self.id).pluck(:title)
  end

  def total_box_office
    Film.where(director_id: self.id).sum("box_office_sales")
  end

  def avg_box_office
    Film.where(director_id: self.id).average("box_office_sales")
  end
end
