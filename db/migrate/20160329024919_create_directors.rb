class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.text  :name
    end
  end
end
