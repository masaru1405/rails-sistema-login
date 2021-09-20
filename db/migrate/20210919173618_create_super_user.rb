class CreateSuperUser < ActiveRecord::Migration[6.1]
  def change
    create_table :super_users do |t|
      t.boolean :is_super_user
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
