class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :current_position
      t.string :email2
      t.string :website
      t.string :linked_in
      t.string :research_gate
      t.string :google_scholar
      t.boolean :is_director
      t.boolean :is_assistant
      t.boolean :is_phd
      t.boolean :is_msc
      t.boolean :is_bsc
      t.boolean :is_intern
      t.string :phD_education
      t.string :MSc_education
      t.string :BSc_education
      t.boolean :phD_alumnus
      t.boolean :MSc_alumnus
      t.boolean :BSc_alumnus
      t.boolean :guest_alumnus
      t.string :phD_thesis
      t.string :phD_thesis_desc
      t.string :MSc_thesis
      t.string :MSc_thesis_desc
      t.string :BSc_thesis
      t.string :BSc_thesis_desc
      t.string :phD_entrance_year
      t.string :phD_graduation_year
      t.string :MSc_entrance_year
      t.string :MSc_graduation_year
      t.string :BSc_entrance_year
      t.string :BSc_graduation_year
      t.string :guest_entrance_year
      t.string :guest_graduation_year
      t.string :intern_title
      t.string :intern_desc
      t.boolean :isAdmin
      t.integer :user_id
      t.timestamps
    end
  end
end
