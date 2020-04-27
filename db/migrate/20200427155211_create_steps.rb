class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps, id: :uuid do |t|
      t.text    :description, null: false
      t.integer :order, null: false
      t.integer :seconds

      t.timestamps
    end
  end
end
