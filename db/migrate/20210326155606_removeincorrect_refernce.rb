class RemoveincorrectRefernce < ActiveRecord::Migration[6.1]
  def change
    rename_column :lessons, :users_id,:user_id
  end
end
