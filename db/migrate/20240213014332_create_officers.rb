class CreateOfficers < ActiveRecord::Migration[7.0]
  def change
    create_table :officers do |t|
      t.string :name
      t.integer :badge
      t.string :city
      t.text :incident

      t.timestamps
    end
  end
end
