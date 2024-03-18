class CreateDas < ActiveRecord::Migration[7.0]
  def change
    create_table :das do |t|
      t.string :name
      t.string :city
      t.integer :caseNumber
      t.string :feedback
      t.string :rating

      t.timestamps
    end
  end
end
