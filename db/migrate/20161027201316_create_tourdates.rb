class CreateTourdates < ActiveRecord::Migration
  def change
    create_table :tourdates do |t|
      t.string :venue
      t.float :lat
      t.float :long
      t.string :otherbands
      t.datetime :date

      t.timestamps null: false
    end
  end
end
