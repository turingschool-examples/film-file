class Film < ActiveRecord::Base

  validates :title, presence: true

  belongs_to :genre

  def self.total_box_office_sales
    sum(:box_office_sales)
  end

end
