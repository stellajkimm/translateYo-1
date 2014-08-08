class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.string :english
      t.string :other

      t.belongs_to :language
      t.belongs_to :user

      t.timestamps
    end
  end
end
