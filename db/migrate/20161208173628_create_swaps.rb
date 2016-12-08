class CreateSwaps < ActiveRecord::Migration[5.0]
  def change
    create_table :swaps do |t|
      t.integer :offer_id
      t.integer :request_id
      t.boolean :accepted

      t.timestamps
    end
  end
end
