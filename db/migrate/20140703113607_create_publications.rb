class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :author
      t.string :title
      t.string :journal
      t.string :other
      t.string :year

      t.timestamps
    end
  end
end
