class CreateEntity < ActiveRecord::Migration[7.0]
  def change
    create_table :entities, primary_key: :entity_id do |t|
      t.string :name
      t.integer :amount
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
