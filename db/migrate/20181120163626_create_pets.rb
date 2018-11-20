class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :breed
      t.date :date_found
      t.boolean :found_by_owner

      t.timestamps
    end
  end
end
