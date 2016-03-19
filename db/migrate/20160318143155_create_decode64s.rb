class CreateDecode64s < ActiveRecord::Migration
  def change
    create_table :decode64s do |t|
      t.string :name
      t.string :datadecode

      t.timestamps null: false
    end
  end
end
