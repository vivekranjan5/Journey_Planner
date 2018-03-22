class CreateStations < ActiveRecord::Migration[5.1]
  def change
    create_table :stations do |t|
      t.string :state
      t.string :code
      t.string :name
      t.string :zone
      t.string :address

      t.timestamps
    end
  end
end
