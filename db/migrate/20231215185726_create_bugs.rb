class CreateBugs < ActiveRecord::Migration[7.1]
  def change
    create_table :bugs do |t|
      t.string :title
      t.text :details
      t.date :deadline
      t.string :status
      t.string :developer

      t.timestamps
    end
  end
end
