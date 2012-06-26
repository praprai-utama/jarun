class CreateTimetablesTimetables < ActiveRecord::Migration

  def up
    create_table :refinery_timetables do |t|
      t.string :name
      t.date :datetime
      t.boolean :upright
      t.integer :photo_id
      t.text :description
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-timetables"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/timetables/timetables"})
    end

    drop_table :refinery_timetables

  end

end
