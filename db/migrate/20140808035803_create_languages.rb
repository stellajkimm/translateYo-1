class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :lingua

      t.timestamps
    end
  end
end
