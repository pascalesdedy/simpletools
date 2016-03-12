class AddNameToEncode64s < ActiveRecord::Migration
  def change
    add_column :encode64s, :name, :string
  end
end
