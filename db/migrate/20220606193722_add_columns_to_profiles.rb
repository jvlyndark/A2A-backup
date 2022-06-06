class AddColumnsToProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :user_id, :int
    add_column :profiles, :name, :string
    add_column :profiles, :age, :int
    add_column :profiles, :location, :string
  end
end
