class AddArtistsAndJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :albums_artists, id: false do |t|
      t.belongs_to :artist, index: true
      t.belongs_to :album, index: true
    end
  end
end
