class Film < ActiveRecord::Base
  belongs_to :genre
  belongs_to :director
end
