class CreatePublications < ActiveRecord::Migration[5.1]
  def change
    create_table :publications do |t|
      t.string :authors
      t.string :date
      t.string :citation
      t.references :publication_type, foreign_key: true

      t.timestamps
    end
    add_index :publications, :date
  end
end
