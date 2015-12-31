class CreateSuperheroes < ActiveRecord::Migration
  def change
    create_table :superheroes do |t|
      t.string :first_name
      t.string :last_name
      t.string :occupation
      t.string :super_power
      t.string :hero_name

      t.timestamps null: false
    end
  end
end
