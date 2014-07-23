class RemoveColumnsFromGames < ActiveRecord::Migration
  def change
    remove_column :games, :frame_1a
    remove_column :games, :frame_1b
    remove_column :games, :frame_2a
    remove_column :games, :frame_2b
    remove_column :games, :frame_3a
    remove_column :games, :frame_3b
    remove_column :games, :frame_4a
    remove_column :games, :frame_4b
    remove_column :games, :frame_5a
    remove_column :games, :frame_5b
    remove_column :games, :frame_6a
    remove_column :games, :frame_6b
    remove_column :games, :frame_7a
    remove_column :games, :frame_7b
    remove_column :games, :frame_8a
    remove_column :games, :frame_8b
    remove_column :games, :frame_9a
    remove_column :games, :frame_9b
    remove_column :games, :frame_10a
    remove_column :games, :frame_10b
  end
end
