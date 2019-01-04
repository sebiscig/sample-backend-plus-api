class AddIndexesToPagesAndUsers < ActiveRecord::Migration[5.1]
  def change
    add_index :pages, :title, unique: true
    add_index :contacts, :name, unique: true
  end
end
