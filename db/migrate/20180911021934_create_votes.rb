class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.string :number
      t.string :question
      t.string :description
      t.integer :type

      t.timestamps
    end
  end
end
