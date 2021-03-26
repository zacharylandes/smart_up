class AddStatustoUserSeries < ActiveRecord::Migration[6.1]
  def change
    add_column :user_series, :status,:string
    remove_column :series, :status
  end
end
