class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.boolean :availability
      t.date :start_aval
      t.date :finish_aval

      t.timestamps null: false
    end
  end
end
