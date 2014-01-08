class CreateAlbum < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.string :artist
      t.string :description
      t.integer :rank, default: 1

      t.timestamps
    end
  end
end
