class AddColumnToFoods < ActiveRecord::Migration[6.1]
  def change
    add_column :foods, :module_id, :integer
  end
end
