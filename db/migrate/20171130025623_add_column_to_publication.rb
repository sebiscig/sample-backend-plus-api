class AddColumnToPublication < ActiveRecord::Migration[5.1]
  def change
    add_column :publications, :featured, :boolean, default: false
    add_column :publications, :abstract, :string, default: nil
  end
end
