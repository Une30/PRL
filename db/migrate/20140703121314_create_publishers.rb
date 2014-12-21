class CreatePublishers < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      t.integer :profile_id
      t.integer :publication_id

      t.timestamps
    end
  end
end
