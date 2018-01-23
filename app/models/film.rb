class Film < ActiveRecord::Base
  validates_presence_of :title
  # validates :title, presence: true, uniqueness: true

  def self.total_box_office_sales
    sum(:box_office_sales)
  end

end
