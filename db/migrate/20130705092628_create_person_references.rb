class CreatePersonReferences < ActiveRecord::Migration
  def change
    create_table :person_references do |t|
      t.integer :person_id
      t.integer :reference_id
      t.integer :position

      t.timestamps
    end
  end
end
