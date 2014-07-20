class CreateFrames < ActiveRecord::Migration
  def change
    create_table :frames do |t|
      t.references :game
      t.integer :frame_number
      t.integer :chance_one_points
      t.integer :chance_two_points
      t.integer :total_points

      t.timestamps
    end
  end
end
