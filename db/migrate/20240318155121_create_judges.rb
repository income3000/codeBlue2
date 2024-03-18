class CreateJudges < ActiveRecord::Migration[7.0]
  def change
    create_table :judges do |t|
      t.string :caseNumber
      t.string :raceOfoffender
      t.string :judgement
      t.text :caseSpecifics
      t.string :feedback
      t.string :rating

      t.timestamps
    end
  end
end
