class CreateUserLesson < ActiveRecord::Migration[6.1]
  def change
    create_table :user_lessons do |t|
      t.references :user, null: false, foreign_key: true
      t.references :lesson, null: false, foreign_key: true

      t.timestamps
    end
    remove_column :users,:lesson_id
    remove_column :lessons,:user_id
  end
end
