class CreateDbases < ActiveRecord::Migration
  def change
    create_table :dbases do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
