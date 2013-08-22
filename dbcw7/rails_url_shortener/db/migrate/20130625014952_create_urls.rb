class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.integer :user_id
      t.string :long_url
      t.string :short_url
      t.boolean :private
      t.integer :click_count, { default: 0 }
      t.timestamps
    end
  end
end
