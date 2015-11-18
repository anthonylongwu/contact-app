class ChangeLatitueAndLongitudeOfContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :longitude, :float
    add_column :contacts, :latitude, :float
    remove_column :contacts, :latitude_and_longitude, :float
  end
end
