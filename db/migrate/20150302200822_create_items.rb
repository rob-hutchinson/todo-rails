class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_name
      t.datetime :due_date 
      t.boolean :done, default: false
      t.integer :list_id

      t.timestamps null: false
    end
  end
end
