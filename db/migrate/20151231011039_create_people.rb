class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :occupation
      t.string :super_power
      t.string :hero_name

      t.timestamps null: false
    end
  end
end
