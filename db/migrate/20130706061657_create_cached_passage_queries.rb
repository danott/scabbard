class CreateCachedPassageQueries < ActiveRecord::Migration
  def change
    create_table :cached_passage_queries do |t|
      t.string :query_string
      t.integer :passage_id

      t.timestamps
    end
  end
end
