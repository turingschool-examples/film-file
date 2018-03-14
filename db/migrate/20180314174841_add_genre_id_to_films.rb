class AddGenreIdToFilms < ActiveRecord::Migration[5.1]
  def change
    add_column :films, :genre_id, :integer
  end
end
