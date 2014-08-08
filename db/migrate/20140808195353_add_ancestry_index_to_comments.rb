class AddAncestryIndexToComments < ActiveRecord::Migration
  def up
  	add_index :comments, :ancestry
  end
  def up
  	remove_index :comments, :ancestry
  end

end
