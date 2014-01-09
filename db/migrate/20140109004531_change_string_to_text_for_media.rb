class ChangeStringToTextForMedia < ActiveRecord::Migration
  def change
    change_column :books,  :description, :text
    change_column :movies, :synopsis, :text
    change_column :albums, :description, :text
  end
end
