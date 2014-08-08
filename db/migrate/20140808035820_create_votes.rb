class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :up
      t.integer :down

      t.belongs_to :comment

      t.timestamps
    end
  end
end
