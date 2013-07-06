class CreateLookups < ActiveRecord::Migration
  def change
    create_table :lookups do |t|
      t.string :passage
      t.integer :reference_id

      t.timestamps
    end
  end
end
