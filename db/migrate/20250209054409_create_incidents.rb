class CreateIncidents < ActiveRecord::Migration[7.0]
  def change
    create_table :incidents do |t|
      t.string :title
      t.text :story
      t.string :comment

      t.timestamps
    end
  end
end
