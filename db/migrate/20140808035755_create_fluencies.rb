class CreateFluencies < ActiveRecord::Migration
  def change
    create_table :fluencies do |t|
      t.string :proficiency

      t.belongs_to :language
      t.belongs_to :user

      t.timestamps
    end
  end
end
