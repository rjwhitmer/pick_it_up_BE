class CreateSportingEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :sporting_events do |t|
      t.string :sport
      t.integer :players

      t.references :park, foreign_key: true
      t.timestamps
    end
  end
end
