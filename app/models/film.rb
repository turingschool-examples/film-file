class Film < ActiveRecord::Base
  validates_presence_of :title
  belongs_to :genre

  def self.total_box_office_sales
    sum(:box_office_sales)
  end

end
