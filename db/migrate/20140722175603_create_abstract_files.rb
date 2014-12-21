class CreateAbstractFiles < ActiveRecord::Migration
  def change
    create_table :abstract_files do |t|
      t.integer :project_id

      t.timestamps
    end
  end
end
