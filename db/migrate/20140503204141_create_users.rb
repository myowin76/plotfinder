class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :title
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
  end
end
