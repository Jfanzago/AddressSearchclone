class RemoveColumnFromHomes < ActiveRecord::Migration
  def change
    remove_column :homes, :school, :string
  end
end
