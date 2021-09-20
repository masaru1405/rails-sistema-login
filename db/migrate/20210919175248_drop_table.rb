class DropTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :super_users
  end
end
