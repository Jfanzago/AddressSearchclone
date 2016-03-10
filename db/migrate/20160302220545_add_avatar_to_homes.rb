class AddAvatarToHomes < ActiveRecord::Migration
  def change
    add_column :homes, :avatars, :json
  end
end
