# This migration comes from refinery_plans (originally 1)
class CreatePlansPlans < ActiveRecord::Migration

  def up
    create_table :refinery_plans do |t|
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
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-plans"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/plans/plans"})
    end

    drop_table :refinery_plans

  end

end
