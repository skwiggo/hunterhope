class CreateBlogposts < ActiveRecord::Migration
  def change
    create_table :blogposts do |t|
      t.string :newpost

      t.timestamps null: false
    end
  end
end
