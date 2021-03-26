class ChangeCurrentLesson < ActiveRecord::Migration[6.1]
  def change
    rename_column :users,:current_lesson, :lesson_id

  end
end
