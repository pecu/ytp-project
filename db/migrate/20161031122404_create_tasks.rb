class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :content
      t.references :task_list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
