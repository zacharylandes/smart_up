class ChangeLessontoCurrentLessononUser < ActiveRecord::Migration[6.1]
  def change
    rename_column :users,:lesson_id,:current_lesson
  end
end
