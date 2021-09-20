class CreateUserInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :user_infos do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :address
      t.string :cep
      t.string :state
      t.date :birthdate
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
