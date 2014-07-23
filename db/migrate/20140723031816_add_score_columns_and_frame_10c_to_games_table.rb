class AddScoreColumnsAndFrame10cToGamesTable < ActiveRecord::Migration
  def change
    add_column :games, :frame_10c, :string
    add_column :games, :frame_1_score, :string
    add_column :games, :frame_2_score, :string
    add_column :games, :frame_3_score, :string
    add_column :games, :frame_4_score, :string
    add_column :games, :frame_5_score, :string
    add_column :games, :frame_6_score, :string
    add_column :games, :frame_7_score, :string
    add_column :games, :frame_8_score, :string
    add_column :games, :frame_9_score, :string
    add_column :games, :frame_10_score, :string
    add_column :games, :scorecard, :integer, array: true



  end
end
