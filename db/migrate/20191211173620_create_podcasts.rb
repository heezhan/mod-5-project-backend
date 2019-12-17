class CreatePodcasts < ActiveRecord::Migration[6.0]
  def change
    create_table :podcasts do |t|
      t.string :api_id
      t.string :image
      t.string :title
      t.string :country
      t.string :language
      t.string :publisher
      t.string :thumbnail
      t.string :description
      t.integer :total_episodes

      t.timestamps
    end
  end
end
