class AddIndexOnSchedule < ActiveRecord::Migration[5.1]
  def up
  	add_index :schedules, [:station_code, :train_number, :arrival, :departure], name: 'index_station_train_arr_dept'
  end
  def down
  	remove_index :schedules, [:station_code, :train_number, :arrival, :departure], name: 'index_station_train_arr_dept'
  end
end
