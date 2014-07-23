class AddFrameNumberToGames < ActiveRecord::Migration
  def change
    add_column :games, :frame_number, :integer
  end
end
