class ChangeDateOnTourdate < ActiveRecord::Migration
  def change
    change_column :tourdates, :date, :text
  end
end
