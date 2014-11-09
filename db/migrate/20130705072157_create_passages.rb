class CreatePassages < ActiveRecord::Migration
  def change
    create_table :passages do |t|
      t.string :heading
      t.text :html
      t.string :sha

      t.timestamps
    end
  end
end
