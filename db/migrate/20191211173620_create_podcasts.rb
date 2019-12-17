class CreatePodcasts < ActiveRecord::Migration[6.0]
  def change
    create_table :podcasts do |t|
      t.string :api_id
      t.string :thumbnail
      t.string :image
      t.string :title
      t.string :publisher
      t.string :country
      t.string :language
      t.string :description
      t.integer :total_episodes

      t.timestamps
    end
  end
end
