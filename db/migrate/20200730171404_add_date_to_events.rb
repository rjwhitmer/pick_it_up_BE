class AddDateToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :sporting_events, :event_date, :datetime
  end
end
