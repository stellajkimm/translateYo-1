class AddFlagToLanguages < ActiveRecord::Migration
  def change
  	add_column :languages, :flag, :string
  end
end
