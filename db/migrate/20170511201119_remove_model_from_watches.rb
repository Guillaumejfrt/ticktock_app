class RemoveModelFromWatches < ActiveRecord::Migration[5.1]
  def change
    remove_column :watches, :model, :string
  end
end
