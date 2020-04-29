class CreateCreations < ActiveRecord::Migration[6.0]
  def change
    create_table :creations, id: :uuid do |t|
      t.string :name, null: false
      t.text :summary
      t.uuid :creator_id
      t.uuid :header_photo_id

      t.timestamps
    end

    add_index :creations, [:name, :creator_id], unique: true
  end
end
