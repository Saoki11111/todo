class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.boolean :done, default: false

      # db のレコード作成日にrails が作成する
      t.timestamps
    end
  end
end
