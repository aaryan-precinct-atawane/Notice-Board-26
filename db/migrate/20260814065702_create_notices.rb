class CreateNotices < ActiveRecord::Migration[8.1]
  def change
    create_table :notices do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.string :author_name, null: false
      t.string :category, null: false
      t.boolean :pinned, default: false

      t.timestamps
    end
  end
end
