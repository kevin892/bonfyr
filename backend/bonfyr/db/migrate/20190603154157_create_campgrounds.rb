class CreateCampgrounds < ActiveRecord::Migration[5.2]
  def change
    create_table :campgrounds do |t|
      t.string :name
      t.integer :total_sites
      t.string :address
      t.string :dates_open
      t.text :directions
      t.string :contact_info
      t.text :description
      t.boolean :electric
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
