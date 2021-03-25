class CreateSeries < ActiveRecord::Migration[6.1]
  def change
    create_table :series do |t|
      t.string :title
      t.time :start_time
      t.time :end_time
      t.string :status

      t.timestamps
    end
  end
end
