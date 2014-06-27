class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :nickname
      t.string :last_name
      t.text :description

      t.timestamps
    end
  end
end
