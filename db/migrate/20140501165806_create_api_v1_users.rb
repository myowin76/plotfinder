class CreateApiV1Users < ActiveRecord::Migration
  def change
    create_table :api_v1_users do |t|
      t.string :username
      t.string :email
      t.string :firstname
      t.string :lastname
      t.string :title

      t.timestamps
    end
  end
end
