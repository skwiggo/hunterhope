class ChangeLyricsInSong < ActiveRecord::Migration
    def change
      change_column :lyrics, :text
    end
end
