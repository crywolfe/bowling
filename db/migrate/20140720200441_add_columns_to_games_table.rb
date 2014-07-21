class AddColumnsToGamesTable < ActiveRecord::Migration
  def change
    add_column :games, :frame_1a, :string
    add_column :games, :frame_1b, :string
    add_column :games, :frame_2a, :string
    add_column :games, :frame_2b, :string
    add_column :games, :frame_3a, :string
    add_column :games, :frame_3b, :string
    add_column :games, :frame_4a, :string
    add_column :games, :frame_4b, :string
    add_column :games, :frame_5a, :string
    add_column :games, :frame_5b, :string
    add_column :games, :frame_6a, :string
    add_column :games, :frame_6b, :string
    add_column :games, :frame_7a, :string
    add_column :games, :frame_7b, :string
    add_column :games, :frame_8a, :string
    add_column :games, :frame_8b, :string
    add_column :games, :frame_9a, :string
    add_column :games, :frame_9b, :string
    add_column :games, :frame_10a, :string
    add_column :games, :frame_10b, :string

  end
end
