class AddGenreIdToFilms < ActiveRecord::Migration
  def change
    add_column :films, :genre_id, :integer
  end
end
