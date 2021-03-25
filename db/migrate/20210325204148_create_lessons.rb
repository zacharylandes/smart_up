class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.string :title
      t.references :series, null: false, foreign_key: true
      t.integer :sort_key
      t.string :image
      t.string :video
      t.string :content

      t.timestamps
    end
  end
end
