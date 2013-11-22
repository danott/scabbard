class CreatePersonPassages < ActiveRecord::Migration
  def change
    create_table :person_passages do |t|
      t.integer :person_id
      t.integer :passage_id
      t.integer :position

      t.timestamps
    end
  end
end
