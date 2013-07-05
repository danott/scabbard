class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :title
      t.text :html

      t.timestamps
    end
  end
end
