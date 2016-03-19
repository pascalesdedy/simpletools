class RemoveDatadecodeFromDecode64s < ActiveRecord::Migration
  def change
    remove_column :decode64s, :datadecode, :string
  end
end
