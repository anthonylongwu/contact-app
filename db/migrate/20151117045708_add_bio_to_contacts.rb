class AddBioToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :description, :text
  end
end
