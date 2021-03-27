class UpdateTimeOnUserSeries < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_series, :start_time
    remove_column :user_series, :end_time
    add_column :user_series, :start_time, :datetime
    add_column :user_series, :end_time, :datetime

  end
end
