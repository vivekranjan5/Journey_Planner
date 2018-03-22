class CreateTrains < ActiveRecord::Migration[5.1]
  def change
    create_table :trains do |t|
      t.boolean :third_ac
      t.time :arrival_time
      t.string :source_station_code
      t.string :name
      t.string :zone
      t.boolean :chair_car
      t.boolean :first_class
      t.integer :duration_m
      t.boolean :sleeper
      t.string :source_station_name
      t.integer :number
      t.time :departure_time
      t.integer :return_train
      t.string :destination_station_code
      t.boolean :second_ac
      t.string :classes
      t.string :destination_station_name
      t.integer :duration_h
      t.string :train_type
      t.boolean :first_ac
      t.float :distance

      t.timestamps
    end
  end
end
