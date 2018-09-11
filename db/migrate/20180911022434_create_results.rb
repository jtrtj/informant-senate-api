class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.references :vote, foreign_key: true
      t.string :result

      t.timestamps
    end
  end
end
