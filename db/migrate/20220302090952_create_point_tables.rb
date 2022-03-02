class CreatePointTables < ActiveRecord::Migration[7.0]
  def change
    create_table :point_tables do |t|
      t.string :name
      t.integer :win
      t.integer :loss
      t.integer :draw
      t.integer :goals_for
      t.integer :goals_against
      t.integer :goals_diff
      t.integer :total_points

      t.timestamps
    end
  end
end
