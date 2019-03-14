class CreatePlayers < ActiveRecord::Migration[5.2]
  def self.up
    create_table :players do |t|
      t.string :name
      t.integer :number
      t.string :position
      t.string :club

      t.belongs_to :team, foreign_key: true, index: true

      t.timestamps
    end
  end

  def self.down
    drop_table :players
  end
end
