class AddReleaseIdToSongCorrect < ActiveRecord::Migration
  def change
    add_reference :songs, :release, index: true, foreign_key: true
  end
end
