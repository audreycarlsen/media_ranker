class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.string :synopsis
      t.integer :rank

      t.timestamps
    end
  end
end
