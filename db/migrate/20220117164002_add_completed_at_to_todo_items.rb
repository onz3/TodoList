class AddCompletedAtToTodoItems < ActiveRecord::Migration[6.1]
  def change
    add_column :lists_items, :completed_at, :datetime
  end
end
