class AddDressSizeToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :dress_size, :string
  end
end
