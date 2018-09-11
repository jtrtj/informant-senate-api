class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.references :vote, foreign_key: true
      t.string :result
      t.integer :democrat_yes
      t.integer :democrat_no
      t.integer :democrat_not_voting
      t.integer :republican_yes
      t.integer :republican_no
      t.integer :republican_not_voting
      t.integer :independent_yes
      t.integer :independent_no
      t.integer :independent_not_voting
      t.integer :total_yes
      t.integer :total_no
      t.integer :total_not_voting

      t.timestamps
    end
  end
end
