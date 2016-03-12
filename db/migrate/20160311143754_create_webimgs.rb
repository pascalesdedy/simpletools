class CreateWebimgs < ActiveRecord::Migration
  def change
    create_table :webimgs do |t|
      t.string :name
      t.attachment :avatar

      t.timestamps null: false
    end
  end
end
