class AddNameToJudges < ActiveRecord::Migration[7.0]
  def change
    add_column :judges, :name, :string
  end
end
