class AddStatusToUserLesson < ActiveRecord::Migration[6.1]
  def change
    add_column :user_lessons, :status, :string
  end
end
