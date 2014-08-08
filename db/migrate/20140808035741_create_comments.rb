class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content

      t.integer :commentable_id
      t.string :commentable_type
      t.string :ancestry

      t.belongs_to :user
      t.belongs_to :query

      t.timestamps
    end
  end
end
