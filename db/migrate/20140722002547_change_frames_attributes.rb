class ChangeFramesAttributes < ActiveRecord::Migration
  def change
    change_table :frames do |t|
      t.rename :chance_one_points, :ball1
      t.rename :chance_two_points, :ball2
    end
  end

end
