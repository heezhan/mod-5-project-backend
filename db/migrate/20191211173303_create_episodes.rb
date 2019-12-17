class CreateEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :episodes do |t|
      t.integer :podcast_id
      t.string :api_id
      t.string :audio
      t.string :image
      t.string :title
      t.string :thumbnail
      t.integer :pub_date_ms

      t.timestamps
    end
  end
end
