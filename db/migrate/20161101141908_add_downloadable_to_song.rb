class AddDownloadableToSong < ActiveRecord::Migration
  def change
    add_column :songs, :downloadable, :text
  end
end
