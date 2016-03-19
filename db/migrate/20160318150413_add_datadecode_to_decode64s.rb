class AddDatadecodeToDecode64s < ActiveRecord::Migration
  def change
    add_column :decode64s, :datadecode, :text
  end
end
