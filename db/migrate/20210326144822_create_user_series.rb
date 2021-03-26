class CreateUserSeries < ActiveRecord::Migration[6.1]
  def change
    create_table :user_series do |t|
      t.references :user, null: false, foreign_key: true
      t.references :series, null: false, foreign_key: true
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
