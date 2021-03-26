class RemoveStartTimeEndTimefromSeries < ActiveRecord::Migration[6.1]
  def change
    remove_column :series,:end_time
    remove_column :series,:start_time
  end
end
