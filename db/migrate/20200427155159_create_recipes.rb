class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes, id: :uuid do |t|
      t.string :inspired_by
      t.string :source_url
      t.belongs_to :creation

      t.timestamps
    end
  end
end
