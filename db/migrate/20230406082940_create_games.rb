class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :board
      t.integer :game_state, default: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
