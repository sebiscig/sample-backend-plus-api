class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :title
      t.string :unit
      t.string :institution
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
