class CreateSchedulesSchedules < ActiveRecord::Migration

  def up
    create_table :refinery_schedules do |t|
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
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-schedules"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/schedules/schedules"})
    end

    drop_table :refinery_schedules

  end

end
