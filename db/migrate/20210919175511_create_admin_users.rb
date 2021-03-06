class CreateAdminUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_users do |t|
      t.boolean :is_admin
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
