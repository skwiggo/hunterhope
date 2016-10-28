class ChangeNewpostInBlogpost < ActiveRecord::Migration
  def change
    change_column :blogposts, :newpost, :text
  end
end
