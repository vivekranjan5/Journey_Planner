class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.time :arrival
      t.integer :day
      t.string :train_name
      t.string :station_name
      t.string :station_code
      t.integer :train_number
      t.time :departure

      t.timestamps
    end
  end
end
