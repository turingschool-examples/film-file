class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.text    :title
      t.date    :year
      t.integer :box_office_sales

      t.timestamps null: false
    end
  end
end
