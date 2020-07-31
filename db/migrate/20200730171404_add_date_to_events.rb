class AddDateToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :sporting_events, :event_date, :date
    add_column :sporting_events, :event_time, :time
  end
end
