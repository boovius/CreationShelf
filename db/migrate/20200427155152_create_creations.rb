class CreateCreations < ActiveRecord::Migration[6.0]
  def change
    create_table :creations, id: :uuid do |t|
      t.string :name
      t.text :summary
      t.belongs_to :creator

      t.timestamps
    end

    add_index :creations, [:name, :creator_id], unique: true
  end
end
