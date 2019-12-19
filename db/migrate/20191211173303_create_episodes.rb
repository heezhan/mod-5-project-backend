class CreateEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :episodes do |t|
      t.string :api_id
      t.string :podcast_id
      t.string :thumbnail
      t.string :image
      t.string :podcast_title_original
      t.string :title_original
      t.string :publisher_original
      t.string :description_original
      t.string :audio

      t.timestamps
    end
  end
end
