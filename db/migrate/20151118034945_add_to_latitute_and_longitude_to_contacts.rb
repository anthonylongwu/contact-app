class AddToLatituteAndLongitudeToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :latitude_and_longitude, :float
  end
end
