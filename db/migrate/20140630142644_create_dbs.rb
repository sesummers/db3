class CreateDbs < ActiveRecord::Migration
  def change
    create_table :dbs do |t|
      t.string :user_name
      t.string :email

      t.timestamps
    end
  end
end
