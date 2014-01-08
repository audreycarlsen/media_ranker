class AddDefaultRankToBooks < ActiveRecord::Migration
  def change
    change_column :books, :rank, :integer, default: 1
  end
end
