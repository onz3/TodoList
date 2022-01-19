class CreateListsItems < ActiveRecord::Migration[6.1]
  def change
    create_table :lists_items do |t|
      t.string :content
      t.references :lists, null: false, foreign_key: true

      t.timestamps
    end
  end
end
