class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.integer :points
      t.integer :guest_points
      t.belongs_to :team, foreign_key: true, index: true
      t.belongs_to :guest_team, foreign_key: { to_table: :teams}, index: true
      t.boolean :add_time
      t.timestamps
    end
  end
end
