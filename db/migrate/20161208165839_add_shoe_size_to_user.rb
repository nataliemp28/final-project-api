class AddShoeSizeToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :shoe_size, :string
  end
end
