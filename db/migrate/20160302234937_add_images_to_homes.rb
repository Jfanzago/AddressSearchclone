class AddImagesToHomes < ActiveRecord::Migration
  def change
    add_column :homes, :images, :string
  end
end
