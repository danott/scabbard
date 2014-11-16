class CreateJoinTablePassagePerson < ActiveRecord::Migration
  def change
    create_join_table :passages, :people do |t|
      t.index [:passage_id, :person_id]
      t.index [:person_id, :passage_id]
    end
  end
end
