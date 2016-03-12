class CreateEncode64s < ActiveRecord::Migration
  def change
    create_table :encode64s do |t|
      t.string :dataencode
      t.string :name

      t.timestamps null: false
    end
  end
end
