class Film < ActiveRecord::Base
  belongs_to :genre
  validates :title,            presence: true, uniqueness: true
  validates :year,             presence: true
  validates :box_office_sales, presence: true

  def self.total_sales
    sum(:box_office_sales)
  end

  def self.average_sales
    total_sales / (Film.count)
  end
end
