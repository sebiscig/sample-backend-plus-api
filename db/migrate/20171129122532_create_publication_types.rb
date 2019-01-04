class CreatePublicationTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :publication_types do |t|
      t.string :kind
      t.integer :rank

      t.timestamps
    end
    add_index :publication_types, :rank
  end
end
