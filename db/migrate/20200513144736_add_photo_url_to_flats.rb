class AddPhotoUrlToFlats < ActiveRecord::Migration[6.0]
  def change
    add_column :flats, :photo_url, :string
  end
end
