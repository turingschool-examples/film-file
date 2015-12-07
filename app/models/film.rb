class Film < ActiveRecord::Base
  belongs_to :genre

  def self.total_sales
    sum(:box_office_sales)
  end

  def self.average_sales
    average(:box_office_sales).round(2)
  end
end