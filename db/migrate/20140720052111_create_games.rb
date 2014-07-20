class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :scorecard, array: true
      t.string :comment
      t.references :user

      t.timestamps
    end
  end
end
