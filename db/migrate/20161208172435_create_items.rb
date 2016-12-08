class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.text :image
      t.text :description
      t.string :condition
      t.string :size
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
