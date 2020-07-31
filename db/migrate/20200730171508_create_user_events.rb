class CreateUserEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :user_events do |t|
      t.references :sporting_event
      t.references :user
      t.timestamps
    end
  end
end
