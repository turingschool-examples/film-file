class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.text    :name

      t.timestamps null: false
    end
  end
end
