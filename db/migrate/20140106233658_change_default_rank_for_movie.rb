class ChangeDefaultRankForMovie < ActiveRecord::Migration
  def change
    change_column :movies, :rank, :integer, default: 1
  end
end
